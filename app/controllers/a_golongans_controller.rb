class AGolongansController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_golongan_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_golongans = AGolongan.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_golongans }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_golongan }
    end
  end

  def new
    @a_golongan = AGolongan.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_golongan }
    end
  end

  def edit; end

  def create
    @a_golongan = AGolongan.new(params[:a_golongan])
    respond_to do |format|
      if @a_golongan.save
        format.html { redirect_to @a_golongan, notice: 'Data berhasil dibuat' }
        format.json { render json: @a_golongan, status: :created, location: @a_golongan }
      else
        format.html { render action: "new" }
        format.json { render json: @a_golongan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_golongan.update_attributes(params[:a_golongan])
        format.html { redirect_to @a_golongan, notice: 'Data berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_golongan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_golongan.destroy
    respond_to do |format|
      format.html { redirect_to a_golongans_url, notice: 'Data berhasil di hapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    AGolongan.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_golongans = AGolongan.where(query).page(params[:page]).per(5)
    render template: "a_golongans/index"
  end

private
  def find_a_golongan_by_id
    @a_golongan = AGolongan.find_by_id(params[:id])
    if @a_golongan.blank?
      flash[:notice] = "Data tidak ditemukan"
      redirect_to a_golongans_path
    end
  end
end
