class ANegarasController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_negara_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_negaras = ANegara.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_negaras }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_negara }
    end
  end

  def new
    @a_negara = ANegara.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_negara }
    end
  end

  def edit; end

  def create
    @a_negara = ANegara.new(params[:a_negara])
    respond_to do |format|
      if @a_negara.save
        format.html { redirect_to @a_negara, notice: 'Negara berhasil dibuat' }
        format.json { render json: @a_negara, status: :created, location: @a_negara }
      else
        format.html { render action: "new" }
        format.json { render json: @a_negara.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_negara.update_attributes(params[:a_negara])
        format.html { redirect_to @a_negara, notice: 'Negara berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_negara.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_negara.destroy
    respond_to do |format|
      format.html { redirect_to a_negaras_url, notice: 'Negara berhasil dihapus' }
      format.json { head :no_content }
    end
  end
  
private
  def find_a_negara_by_id
    @a_negara = ANegara.find_by_id(params[:id])
    if @a_negara.blank?
      flash[:alert] = "Negara tidak ditemukan"
      redirect_to a_negaras_path
    end
  end
end
