class ABadanUsahasController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_badan_usaha_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_badan_usahas = ABadanUsaha.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_badan_usahas }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_badan_usaha }
    end
  end

  def new
    @a_badan_usaha = ABadanUsaha.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_badan_usaha }
    end
  end

  def edit; end

  def create
    @a_badan_usaha = ABadanUsaha.new(params[:a_badan_usaha])
    respond_to do |format|
      if @a_badan_usaha.save
        format.html { redirect_to @a_badan_usaha, notice: 'Badan usaha berhasil di buat' }
        format.json { render json: @a_badan_usaha, status: :created, location: @a_badan_usaha }
      else
        format.html { render action: "new" }
        format.json { render json: @a_badan_usaha.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_badan_usaha.update_attributes(params[:a_badan_usaha])
        format.html { redirect_to @a_badan_usaha, notice: 'Badan usaha berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_badan_usaha.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_badan_usaha.destroy
    respond_to do |format|
      format.html { redirect_to a_badan_usahas_url, notice: 'Badan usaha berhasil di hapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ABadanUsaha.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_badan_usahas = ABadanUsaha.where(query).page(params[:page]).per(5)
    render template: "a_badan_usahas/index"
  end

private
  def find_a_badan_usaha_by_id
    @a_badan_usaha = ABadanUsaha.find_by_id(params[:id])
    if @a_badan_usaha.blank?
      flash[:alert] = "Badan usaha tidak ditemukan"
      redirect_to a_badan_usahas_path
    end
  end
end
