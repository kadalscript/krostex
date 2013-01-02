class AProvinsisController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_provinsi_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'provinsi'
  @@table_name = AProvinsi.table_name

  def index
    @a_provinsis = AProvinsi.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_provinsis }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_provinsi)
  end

  def new
    @a_provinsi = AProvinsi.new
    common_form(@@table_name, @@title, @a_provinsi)
  end

  def edit
    common_form(@@table_name, @@title, @a_provinsi)
  end

  def create
    @a_provinsi = AProvinsi.new(params[:a_provinsi])
    respond_to do |format|
      if @a_provinsi.save
        format.html { redirect_to @a_provinsi, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_provinsi, status: :created, location: @a_provinsi }
      else
        format.html { common_form(@@table_name, @@title, @a_provinsi) }
        format.json { render json: @a_provinsi.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_provinsi.update_attributes(params[:a_provinsi])
        format.html { redirect_to @a_provinsi, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_provinsi) }
        format.json { render json: @a_provinsi.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_provinsi.destroy
    respond_to do |format|
      format.html { redirect_to a_provinsis_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end


  def destroy_show
    common_form(@@table_name, @@title, @a_provinsi)
  end

  def search
    queries = {}
    AProvinsi.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_provinsis = AProvinsi.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{AProvinsi.human_attribute_name(key).titleize} = \"#{key == 'id_negara' ? @a_provinsis.first.a_negara.nama : value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "#{@@table_name}/index"
  end

private

  def find_a_provinsi_by_id
    @a_provinsi = AProvinsi.find_by_id(params[:id])
    if @a_provinsi.blank?
      respond_to do |format|
        format.html { redirect_to a_provinsis_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at", "updated_at", "updated_by"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
    @select_box_attr = { style: "width: 314px;" }
    @select_box_attr.merge!({ class: 'required' }) if ['new', 'edit', 'create', 'update'].include?(action_name)
    @select_box_attr.merge!({ readonly: 'true', disabled: 'disabled' }) if ['show', 'destroy_show'].include?(action_name)
  end
end
