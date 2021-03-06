class BBarangsController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_b_barang_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @b_barangs = BBarang.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_barangs }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_barang }
    end
  end

  def new
    @b_barang = BBarang.new(kode: counter_alpha(BBarang.count, 3, "BBarang.maximum('kode')"))
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all
    @a_level_fifes = ALevelFive.all
    @a_satuans = ASatuan.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_barang }
    end
  end

  def edit
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all
    @a_level_fifes = ALevelFive.all
    @a_satuans = ASatuan.all
  end

  def create
    @b_barang = BBarang.new(params[:b_barang].merge({updated_by: current_admin_ms_user.login_name}))
    
    prev_barang = BBarang.where(
      id_department: params[:b_barang][:id_department],
      id_golongan: params[:b_barang][:id_golongan],
      id_type: params[:b_barang][:id_type],
      id_level_four: params[:b_barang][:id_level_four],
      id_level_five: params[:b_barang][:id_level_five]
      )

    kode = counter_alpha(prev_barang.count, 3, "BBarang.where(kode: '#{prev_barang.maximum('kode')}').first.kode")

    raise kode

    @b_barang.kode = kode

    respond_to do |format|
      if @b_barang.save
        format.html { redirect_to @b_barang, notice: 'Data berhasil disimpan' }
        format.json { render json: @b_barang, status: :created, location: @b_barang }
      else
        format.html { render action: "new" }
        format.json { render json: @b_barang.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @b_barang.update_attributes(params[:b_barang].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @b_barang, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_barang.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @b_barang.destroy
    respond_to do |format|
      format.html { redirect_to b_barangs_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all
    @a_level_fifes = ALevelFive.all
    @a_satuans = ASatuan.all
  end

  def search
    query = {}
    BBarang.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @b_barangs = BBarang.where(query).page(params[:page]).per(12)
    render template: "b_barangs/index"
  end

  def combobox_change
    case params[:type]
    when 'department'
      @datum = AGolongan.where(id_department: params[:id_department])
      @elm = 'b_barang_id_golongan'
    when 'golongan'
      @datum = AType.where(id_department: params[:id_department],
        id_golongan: params[:id_golongan])
      @elm = 'b_barang_id_type'
    when 'type'
      @datum = ALevelFour.where(id_department: params[:id_department],
        id_golongan: params[:id_golongan],
        id_type: params[:id_type])
      @elm = 'b_barang_id_level_four'
    when 'level4'
      @datum = ALevelFive.where(id_department: params[:id_department],
        id_golongan: params[:id_golongan],
        id_type: params[:id_type],
        id_level_four: params[:id_level_four])
      @elm = 'b_barang_id_level_five'
    end
  end

private
  def find_b_barang_by_id
    @b_barang = BBarang.find_by_id(params[:id])
    if @b_barang.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to b_barangs_path
    end
  end
end
