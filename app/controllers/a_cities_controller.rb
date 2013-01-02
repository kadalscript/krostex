class ACitiesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_city_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'city'
  @@table_name = ACity.table_name

  def index
    @a_cities = ACity.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_cities }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_city)
  end

  def new
    @a_city = ACity.new
    common_form(@@table_name, @@title, @a_city)
  end

  def edit
    common_form(@@table_name, @@title, @a_city)
  end

  def create
    @a_city = ACity.new(params[:a_city])
    respond_to do |format|
      if @a_city.save
        format.html { redirect_to @a_city, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_city, status: :created, location: @a_city }
      else
        format.html { common_form(@@table_name, @@title, @a_city) }
        format.json { render json: @a_city.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_city.update_attributes(params[:a_city])
        format.html { redirect_to @a_city, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_city) }
        format.json { render json: @a_city.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_city.destroy
    respond_to do |format|
      format.html { redirect_to a_cities_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_city)
  end

  def search
    queries = {}
    ACity.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_cities = ACity.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ACity.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "#{@@table_name}/index"
  end

  def get_provinces
    @a_negara = ANegara.find_by_id(params[:negara])
    respond_to do |format|
      format.js { render }
    end
  end

private

  def find_a_city_by_id
    @a_city = ACity.find_by_id(params[:id])
    if @a_city.blank?
      respond_to do |format|
        format.html { redirect_to a_cities_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at", "updated_by", "updated_at"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
    @select_box_attr = { style: "width: 314px;" }
    @select_box_attr.merge!({ class: 'required' }) if ['new', 'edit', 'create', 'update'].include?(action_name)
    @select_box_attr.merge!({ readonly: 'true', disabled: 'disabled' }) if ['show', 'destroy_show'].include?(action_name)
  end
end
