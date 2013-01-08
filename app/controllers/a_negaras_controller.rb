class ANegarasController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_negara_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'negara'
  @@table_name = ANegara.table_name

  def index
    @a_negaras = ANegara.page(params[:page]).per(PAGINATE).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_negaras }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_negara)
  end

  def new
    @a_negara = ANegara.new
    common_form(@@table_name, @@title, @a_negara)
  end

  def edit
    common_form(@@table_name, @@title, @a_negara)
  end

  def create
    @a_negara = ANegara.new(params[:a_negara].merger({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @a_negara.save
        format.html { redirect_to @a_negara, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_negara, status: :created, location: @a_negara }
      else
        format.html { common_form(@@table_name, @@title, @a_negara) }
        format.json { render json: @a_negara.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_negara.update_attributes(params[:a_negara].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_negara, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_negara) }
        format.json { render json: @a_negara.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @a_negara.destroy
        format.html { redirect_to a_negaras_url, notice: SUCCESSFULLY_DELETE_DATA }
        format.json { head :no_content }
      else
        format.html { redirect_to a_negara_path(@a_negara), alert: "Masih ada data provinsi yg berelasi dengan negara ini" }
        format.json { head :no_content }
      end
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_negara)
  end

  def search
    queries = {}
    ANegara.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_negaras = ANegara.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ANegara.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "a_negaras/index"
  end
  
private

  def find_a_negara_by_id
    @a_negara = ANegara.find_by_id(params[:id])
    if @a_negara.blank?
      respond_to do |format|
        format.html { redirect_to a_negaras_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
  end
end
