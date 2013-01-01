class ABadanUsahasController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_badan_usaha_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'badan usaha'
  @@table_name = ABadanUsaha.table_name

  def index
    @a_badan_usahas = ABadanUsaha.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_badan_usahas }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_badan_usaha)
  end

  def new
    @a_badan_usaha = ABadanUsaha.new
    common_form(@@table_name, @@title, @a_badan_usaha)
  end

  def edit
    common_form(@@table_name, @@title, @a_badan_usaha)
  end

  def create
    @a_badan_usaha = ABadanUsaha.new(params[:a_badan_usaha])
    respond_to do |format|
      if @a_badan_usaha.save
        format.html { redirect_to @a_badan_usaha, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_badan_usaha, status: :created, location: @a_badan_usaha }
      else
        format.html { common_form(@@table_name, @@title, @a_badan_usaha) }
        format.json { render json: @a_badan_usaha.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_badan_usaha.update_attributes(params[:a_badan_usaha])
        format.html { redirect_to @a_badan_usaha, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_badan_usaha) }
        format.json { render json: @a_badan_usaha.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_badan_usaha.destroy
    respond_to do |format|
      format.html { redirect_to a_badan_usahas_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_badan_usaha)
  end

  def search
    queries = {}
    ABadanUsaha.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_badan_usahas = ABadanUsaha.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ABadanUsaha.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "a_badan_usahas/index"
  end

private
  def find_a_badan_usaha_by_id
    @a_badan_usaha = ABadanUsaha.find_by_id(params[:id])
    if @a_badan_usaha.blank?
      flash[:alert] = NOT_FOUND_DATA
      redirect_to a_badan_usahas_path
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at"]
    @updated_at_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
  end
end
