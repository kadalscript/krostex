class ASatuansController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_satuan_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'satuan'
  @@table_name = ASatuan.table_name

  def index
    @a_satuans = ASatuan.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_satuans }
    end
  end

  def show
    common_form(@@table_name, @@title, @satuan)
  end

  def new
    @a_satuan = ASatuan.new
    common_form(@@table_name, @@title, @satuan)
  end

  def edit
    common_form(@@table_name, @@title, @satuan)
  end

  def create
    @a_satuan = ASatuan.new(params[:a_satuan])
    respond_to do |format|
      if @a_satuan.save
        format.html { redirect_to @a_satuan, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_satuan, status: :created, location: @a_satuan }
      else
        format.html { common_form(@@table_name, @@title, @satuan) }
        format.json { render json: @a_satuan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_satuan.update_attributes(params[:a_satuan])
        format.html { redirect_to @a_satuan, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @satuan) }
        format.json { render json: @a_satuan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @a_satuan.destroy
        format.html { redirect_to a_satuans_url, notice: SUCCESSFULLY_DELETE_DATA }
        format.json { head :no_content }
      else
        format.html { redirect_to a_satuan_path(@a_satuan), alert: "Hapus data gagal. Masih ada kemasan yg berelasi dengan satuan ini" }
        format.json { head :no_content }
      end
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @satuan)
  end

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
      respond_to do |format|
        format.html { redirect_to a_satuans_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end      
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at", "updated_at", "updated_by"]
    @updated_at_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
  end
end
