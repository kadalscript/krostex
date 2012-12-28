class ATemplateCatsController < ApplicationController
  before_filter :attribute, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_template_cat_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_template_cats = ATemplateCat.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_template_cats }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_template_cat }
    end
  end

  def new
    @a_template_cat = ATemplateCat.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_template_cat }
    end
  end

  def edit; end

  def create
    @a_template_cat = ATemplateCat.new(params[:a_template_cat])
    respond_to do |format|
      if @a_template_cat.save
        format.html { redirect_to @a_template_cat, notice: 'Data berhasil disimpan' }
        format.json { render json: @a_template_cat, status: :created, location: @a_template_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @a_template_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_template_cat.update_attributes(params[:a_template_cat])
        format.html { redirect_to @a_template_cat, notice: 'Data berhasil di update' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_template_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_template_cat.destroy
    respond_to do |format|
      format.html { redirect_to a_template_cats_url, notice: 'Data berhasil di hapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ATemplateCat.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_template_cats = ATemplateCat.where(query).page(params[:page]).per(5)
    render template: "a_template_cats/index"
  end
  
private
  def find_a_template_cat_by_id
    @a_template_cat = ATemplateCat.find_by_id(params[:id])
    if @a_template_cat.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_template_cats_path
    end
  end
end
