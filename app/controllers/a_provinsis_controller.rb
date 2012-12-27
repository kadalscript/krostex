class AProvinsisController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_provinsi_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_provinsis = AProvinsi.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_provinsis }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_provinsi }
    end
  end

  def new
    @a_provinsi = AProvinsi.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_provinsi }
    end
  end

  def edit; end

  def create
    @a_provinsi = AProvinsi.new(params[:a_provinsi])
    respond_to do |format|
      if @a_provinsi.save
        format.html { redirect_to @a_provinsi, notice: 'Provinsi berhasil dibuat' }
        format.json { render json: @a_provinsi, status: :created, location: @a_provinsi }
      else
        format.html { render action: "new" }
        format.json { render json: @a_provinsi.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_provinsi.update_attributes(params[:a_provinsi])
        format.html { redirect_to @a_provinsi, notice: 'Provinsi berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_provinsi.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_provinsi.destroy
    respond_to do |format|
      format.html { redirect_to a_provinsis_url, notice: 'Provinsi berhasil di hapus' }
      format.json { head :no_content }
    end
  end

private
  def find_a_provinsi_by_id
    @a_provinsi = AProvinsi.find_by_id(params[:id])
    if @a_provinsi.blank?
      flash[:alert] = "Provinsi tidak ditemukan"
      redirect_to a_provinsis_path
    end
  end
end
