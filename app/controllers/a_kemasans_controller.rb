class AKemasansController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_kemasan_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_kemasans = AKemasan.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_kemasans }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_kemasan }
    end
  end

  def new
    @a_kemasan = AKemasan.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_kemasan }
    end
  end

  def edit; end

  def create
    @a_kemasan = AKemasan.new(params[:a_kemasan])
    respond_to do |format|
      if @a_kemasan.save
        format.html { redirect_to @a_kemasan, notice: 'Kemasan berhasil dibuat' }
        format.json { render json: @a_kemasan, status: :created, location: @a_kemasan }
      else
        format.html { render action: "new" }
        format.json { render json: @a_kemasan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_kemasan.update_attributes(params[:a_kemasan])
        format.html { redirect_to @a_kemasan, notice: 'Kemasan berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_kemasan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_kemasan.destroy
    respond_to do |format|
      format.html { redirect_to a_kemasans_url, notice: 'Kemasan berhasil di hapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    AKemasan.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_kemasans = AKemasan.where(query).page(params[:page]).per(12)
    render template: "a_kemasans/index"
  end

private
  def find_a_kemasan_by_id
    @a_kemasan = AKemasan.find_by_id(params[:id])
    if @a_kemasan.blank?
      flash[:alert] = "Kemasan tidak ditemukan"
      redirect_to a_kemasans_path
    end
  end
end
