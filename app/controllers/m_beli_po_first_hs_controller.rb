class MBeliPoFirstHsController < ApplicationController
  before_filter :get_miscellaneous

  @@title = 'purchase order'
  @@table_name = MBeliPoFirstH.table_name

  def index
    @m_beli_po_first_hs = MBeliPoFirstH.is_not_drafted.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @m_beli_po_first_hs }
    end
  end

  def show
    @m_beli_po_first_h = MBeliPoFirstH.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @m_beli_po_first_h }
    end
  end

  def new
    @m_beli_po_first_h = MBeliPoFirstH.new(tanggal: DateTime.now, is_drafted: 1)

    respond_to do |format|
      if @m_beli_po_first_h.save
        format.html { redirect_to draft_m_beli_po_first_hs_path(@m_beli_po_first_h) }
        format.json { render json: @m_beli_po_first_h }
      end
    end
  end

  def edit
    @m_beli_po_first_h = MBeliPoFirstH.find(params[:id])
  end

  def create
    @m_beli_po_first_h = MBeliPoFirstH.new(params[:m_beli_po_first_h])

    respond_to do |format|
      if @m_beli_po_first_h.save
        format.html { redirect_to @m_beli_po_first_h, notice: 'M beli po first h was successfully created.' }
        format.json { render json: @m_beli_po_first_h, status: :created, location: @m_beli_po_first_h }
      else
        format.html { render action: "new" }
        format.json { render json: @m_beli_po_first_h.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @m_beli_po_first_h = MBeliPoFirstH.find(params[:id])

    respond_to do |format|
      if @m_beli_po_first_h.update_attributes(params[:m_beli_po_first_h])
        format.html { redirect_to @m_beli_po_first_h, notice: 'M beli po first h was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @m_beli_po_first_h.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @m_beli_po_first_h = MBeliPoFirstH.find(params[:id])
    @m_beli_po_first_h.destroy

    respond_to do |format|
      format.html { redirect_to m_beli_po_first_hs_url }
      format.json { head :no_content }
    end
  end

  def get_supplier
    @b_supplier = BSupplier.find_by_id(params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def get_golongan
    @a_golongans = AGolongan.where(id_department: params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def get_type
    @a_types = AType.where(id_golongan: params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def get_level_four
    @a_level_fours = ALevelFour.where(id_type: params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def get_level_five
    @a_level_fives = ALevelFive.where(id_level_four: params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def draft
    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:id])
    @m_beli_po_second_ds = @m_beli_po_first_h.m_beli_po_second_ds.order('id')
    respond_to do |format|
      if @m_beli_po_first_h.is_drafted.eql?(true)
        format.html
        format.json { render json: @m_beli_po_first_h }
      else
        format.html { redirect_to m_beli_po_first_hs_path, alert: NOT_FOUND_DATA }
        format.json { render json: @m_beli_po_first_h }
      end
    end
  end

  def undraft
    params[:m_beli_po_first_h][:tanggal] = params[:m_beli_po_first_h][:tanggal].to_time
    params[:m_beli_po_first_h][:total_ppn_nominal] = params[:po_header][:total_disc_persen].to_i * params[:po_header_hidden][:total_sub_total].to_i / 100
    params[:m_beli_po_first_h][:total_sub_total_kurang_disc] = params[:po_header_hidden][:total_sub_total].to_i - params[:m_beli_po_first_h][:total_ppn_nominal].to_i

    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:id])
    @m_beli_po_first_h.update_attributes(params[:m_beli_po_first_h].merge(        
      id_supplier: params[:supplier_id],
      id_valuta: params[:kurs_id],
      nilai_rate_kurs: params[:kurs_value]),
      is_drafted: 0
    )
  end

  def get_gudang
    @a_company_profile = ACompanyProfile.find_by_id(params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def get_mata_uang
    @a_mata_uang = AMataUang.find_by_id(params[:id])
    respond_to do |format|
      format.js { render }
    end
  end

  def populate_barangs
    level_five_id = params[:level_five_id]
    level_four_id = params[:level_four_id]
    type_id = params[:type_id]
    golongan_id = params[:golongan_id]
    department_id = params[:department_id]

    if !level_five_id.blank?
      @b_barangs = BBarang.where(id_level_five: level_five_id)
    elsif !level_four_id.blank?
      @b_barangs = BBarang.where(id_level_four: level_four_id)
    elsif !type_id.blank?
      @b_barangs = BBarang.where(id_type: type_id)
    elsif !golongan_id.blank?
      @b_barangs = BBarang.where(id_golongan: golongan_id)
    elsif !department_id.blank?
      @b_barangs = BBarang.where(id_department: department_id)
    end
  end

  def modify_destroy_form
    @m_beli_po_second_d = MBeliPoSecondD.find_by_id(params[:detail_id])
    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:m_beli_po_first_h_id])

    respond_to do |format|
      format.js { render }
    end
  end

  def modify_edit_form
    @m_beli_po_second_d = MBeliPoSecondD.find_by_id(params[:detail_id])
    @m_beli_po_first_h = MBeliPoFirstH.find_by_id(params[:m_beli_po_first_h_id])

    respond_to do |format|
      format.js { render }
    end
  end

private

  def get_miscellaneous
    @title = @@title
    @additional_columns = ["supplier", "valuta"]
    @visible_columns = ["tanggal", "kode_disp", "total_ppn_nominal", "total_sub_total_kurang_disc"]
    @column_titles = ["tanggal", "no po", "supplier", "valuta", "netto", "ppn", "kurang kirim (%)", "status"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
    @status = [["To be approve", 1], ["To be send", 2], ["In progress", 3], ["Closed", 4], ["Void", 5]]
    @basic_columns = ["no", "kode barang", "nama barang", "qty", "kemasan", "qty", "harga", "disc"]
    @search_columns = @basic_columns + ["check"]
    @detailed_columns = @basic_columns + ["total", "nav"]
  end
end
