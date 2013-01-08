class ADepartmentsController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_department_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'department'
  @@table_name = ADepartment.table_name

  def index
    @a_departments = ADepartment.page(params[:page]).per(PAGINATE)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_departments }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_department)
  end

  def new
    @a_department = ADepartment.new(kode: counter_alpha(ADepartment.count, 1, "ADepartment.maximum('kode')"))
    common_form(@@table_name, @@title, @a_department)
  end

  def edit
    common_form(@@table_name, @@title, @a_department)
  end

  def create
    @a_department = ADepartment.new(params[:a_department].merge({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @a_department.save
        format.html { redirect_to @a_department, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_department, status: :created, location: @a_department }
      else
        format.html { common_form(@@table_name, @@title, @a_department) }
        format.json { render json: @a_department.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_department.update_attributes(params[:a_department].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_department, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_department) }
        format.json { render json: @a_department.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_department.destroy
    respond_to do |format|
      format.html { redirect_to a_departments_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_department)
  end

  def search
    queries = {}
    ADepartment.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_departments = ADepartment.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ADepartment.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "#{@@table_name}/index"
  end

private
  def find_a_department_by_id
    @a_department = ADepartment.find_by_id(params[:id])
    if @a_department.blank?
      respond_to do |format|
        format.html { redirect_to a_departments_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
  end
end