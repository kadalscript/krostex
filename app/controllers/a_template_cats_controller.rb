class ATemplateCatsController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_template_cat_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'template kategori'
  @@table_name = ATemplateCat.table_name

  def index
    @a_template_cats = ATemplateCat.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_template_cats }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_template_cat)
  end

  def new
    @a_template_cat = ATemplateCat.new
    common_form(@@table_name, @@title, @a_template_cat)
  end

  def edit
    common_form(@@table_name, @@title, @a_template_cat)
  end

  def create
    @a_template_cat = ATemplateCat.new(params[:a_template_cat])
    respond_to do |format|
      if @a_template_cat.save
        format.html { redirect_to @a_template_cat, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_template_cat, status: :created, location: @a_template_cat }
      else
        format.html { common_form(@@table_name, @@title, @a_template_cat) }
        format.json { render json: @a_template_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_template_cat.update_attributes(params[:a_template_cat])
        format.html { redirect_to @a_template_cat, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_template_cat) }
        format.json { render json: @a_template_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_template_cat.destroy
    respond_to do |format|
      format.html { redirect_to a_template_cats_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_template_cat)
  end

  def search
    queries = {}
    ATemplateCat.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_template_cats = ATemplateCat.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ATemplateCat.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "#{@@table_name}/index"
  end
  
private

  def find_a_template_cat_by_id
    @a_template_cat = ATemplateCat.find_by_id(params[:id])
    if @a_template_cat.blank?
      respond_to do |format|
        format.html { redirect_to a_template_cats_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at", "status1"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
    @select_box_attr = { style: "width: 314px;" }
    @select_box_attr.merge!({ class: 'required' }) if ['new', 'edit', 'create', 'update'].include?(action_name)
    @select_box_attr.merge!({ readonly: 'true', disabled: 'disabled' }) if ['show', 'destroy_show'].include?(action_name)
  end
end
