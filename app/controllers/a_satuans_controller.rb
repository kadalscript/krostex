class ASatuansController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_satuan_by_id, only: [:show, :edit, :update, :destroy,
                                             :destroy_show]

  def index
    @a_satuans = ASatuan.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_satuans }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_satuan }
    end
  end

  def new
    @a_satuan = ASatuan.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_satuan }
    end
  end

  def edit; end

  def create
    @a_satuan = ASatuan.new(params[:a_satuan])
    respond_to do |format|
      if @a_satuan.save
        format.html { redirect_to @a_satuan, notice: 'Satuan berhasil dibuat' }
        format.json { render json: @a_satuan, status: :created, location: @a_satuan }
      else
        format.html { render action: "new" }
        format.json { render json: @a_satuan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_satuan.update_attributes(params[:a_satuan])
        format.html { redirect_to @a_satuan, notice: 'Satuan berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_satuan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_satuan.destroy
    respond_to do |format|
      format.html { redirect_to a_satuans_url, notice: 'Satuan berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ASatuan.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_satuans = ASatuan.where(query).page(params[:page]).per(12)
    render template: "a_satuans/index"
  end
  
private
  def find_a_satuan_by_id
    @a_satuan = ASatuan.find_by_id(params[:id])
    if @a_satuan.blank?
      flash[:alert] = "Satuan tidak ditemukan"
      redirect_to a_satuans_path
    end
  end
end
