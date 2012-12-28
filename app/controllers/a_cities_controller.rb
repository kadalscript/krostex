class ACitiesController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_city_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_cities = ACity.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_cities }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_city }
    end
  end

  def new
    @a_city = ACity.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_city }
    end
  end

  def edit; end

  def create
    @a_city = ACity.new(params[:a_city])
    respond_to do |format|
      if @a_city.save
        format.html { redirect_to @a_city, notice: 'Data berhasil dibuat' }
        format.json { render json: @a_city, status: :created, location: @a_city }
      else
        format.html { render action: "new" }
        format.json { render json: @a_city.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_city.update_attributes(params[:a_city])
        format.html { redirect_to @a_city, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_city.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_city.destroy
    respond_to do |format|
      format.html { redirect_to a_cities_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ACity.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_cities = ACity.where(query).page(params[:page]).per(5)
    render template: "a_cities/index"
  end

private
  def find_a_city_by_id
    @a_city = ACity.find_by_id(params[:id])
    if @a_city.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_cities_path
    end
  end
end
