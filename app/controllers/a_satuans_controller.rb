class ASatuansController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_satuan_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

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
        format.html { redirect_to @a_satuan, notice: 'Data berhasil dibuat' }
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
        format.html { redirect_to @a_satuan, notice: 'Data berhasil diupdate' }
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
      format.html { redirect_to a_satuans_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    queries = {}
    ASatuan.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_satuans = ASatuan.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ASatuan.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
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
