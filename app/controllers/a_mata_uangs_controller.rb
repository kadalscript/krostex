class AMataUangsController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_mata_uang_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_mata_uangs = AMataUang.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_mata_uangs }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_mata_uang }
    end
  end

  def new
    @a_mata_uang = AMataUang.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_mata_uang }
    end
  end

  def edit; end

  def create
    @a_mata_uang = AMataUang.new(params[:a_mata_uang])
    respond_to do |format|
      if @a_mata_uang.save
        format.html { redirect_to @a_mata_uang, notice: 'Data berhasil disimpan' }
        format.json { render json: @a_mata_uang, status: :created, location: @a_mata_uang }
      else
        format.html { render action: "new" }
        format.json { render json: @a_mata_uang.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_mata_uang.update_attributes(params[:a_mata_uang])
        format.html { redirect_to @a_mata_uang, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_mata_uang.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_mata_uang.destroy
    respond_to do |format|
      format.html { redirect_to a_mata_uangs_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    AMataUang.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_mata_uangs = AMataUang.where(query).page(params[:page]).per(12)
    render template: "a_mata_uangs/index"
  end

private
  def find_a_mata_uang_by_id
    @a_mata_uang = AMataUang.find_by_id(params[:id])
    if @a_mata_uang.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_mata_uangs_path
    end
  end
end