class MBeliNotaFirstHsController < ApplicationController
  before_filter :get_miscellaneous # Get miscellaneous data before loading all action
  before_filter :find_nota_by_id, only: [:draft, :undraft ] # Getting nota data

  @@title = 'nota' # Initializing title
  @@table_name = MBeliNotaFirstH.table_name # Initializing table name

  def index
    @notas = MBeliNotaFirstH.undrafted.page(params[:page]).per(5) # Getting list of notas
    respond_to do |format|
      format.html
    end
  end

  def new
    @nota = MBeliNotaFirstH.new(tanggal: DateTime.now, is_drafted: true)
    respond_to do |format|
      if @nota.save
        format.html { redirect_to m_beli_nota_first_h_draft_path(@nota) }
      end
    end
  end

  def draft
    @details = @nota.details
    @company_profiles = ACompanyProfile.all
    @suppliers = BSupplier.all
    respond_to do |format|
      format.html
    end
  end

  def undraft    
    respond_to do |format|
      if @nota.update_attributes(is_drafted: false)
        format.html { redirect_to m_beli_nota_first_hs_path }
      end
    end
  end

private

  # Populating miscellaneous data
  def get_miscellaneous
    @title = @@title # Initializing title
    @column_titles = ["tanggal", "no nota", "no po", "supplier", "valuta", "nominal po", "nominal btb", "nominal retur", "nominal dp"] # Initializing column titles
    @detailed_columns = ["kode barang", "nama barang", "unit/price", "qty", "satuan", "discount", "nominal"]
    @kurs = AMataUang.all
  end

  def find_nota_by_id
    @nota = MBeliNotaFirstH.find_by_id(params[:m_beli_nota_first_h_id])    
    not_found if @nota.blank?
  end
end
