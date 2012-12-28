class ADepartmentsController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_department_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_departments = ADepartment.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_departments }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_department }
    end
  end

  def new
    @a_department = ADepartment.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_department }
    end
  end

  def edit; end

  def create
    @a_department = ADepartment.new(params[:a_department])
    respond_to do |format|
      if @a_department.save
        format.html { redirect_to @a_department, notice: 'Data berhasil dibuat' }
        format.json { render json: @a_department, status: :created, location: @a_department }
      else
        format.html { render action: "new" }
        format.json { render json: @a_department.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_department.update_attributes(params[:a_department])
        format.html { redirect_to @a_department, notice: 'Data berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_department.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_department.destroy
    respond_to do |format|
      format.html { redirect_to a_departments_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ADepartment.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_departments = ADepartment.where(query).page(params[:page]).per(5)
    render template: "a_departments/index"
  end

private
  def find_a_department_by_id
    @a_department = ADepartment.find_by_id(params[:id])
    if @a_department.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_departments_path
    end
  end
end
