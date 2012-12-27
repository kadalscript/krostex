class AKotasController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_kota_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_kotas = AKota.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_kotas }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_kota }
    end
  end

  def new
    @a_kota = AKota.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_kota }
    end
  end

  def edit; end

  def create
    @a_kota = AKota.new(params[:a_kota])
    respond_to do |format|
      if @a_kota.save
        format.html { redirect_to a_kota_path(@a_kota), notice: 'Kota berhasil dibuat' }
      else
        format.html { render action: "new" }
        format.json { render json: @a_kota.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_kota.update_attributes(params[:a_kota])
        format.html { redirect_to @a_kota, notice: 'Kota berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_kota.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_kota.destroy
    respond_to do |format|
      format.html { redirect_to a_kota_url, notice: 'Kota berhasil dihapus' }
      format.json { head :no_content }
    end
  end

private
  def find_a_kota_by_id
    @a_kota = AKota.find_by_id(params[:id])
    if @a_kota.blank?
      flash[:alert] = "Kota tidak ditemukan"
      redirect_to a_kotas_path
    end
  end
end
