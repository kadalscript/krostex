class AKemasansController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_kemasan_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'kemasan'
  @@table_name = AKemasan.table_name

  def index
    @a_kemasans = AKemasan.page(params[:page]).per(PAGINATE).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_kemasans }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_kemasan)
  end

  def new
    @a_kemasan = AKemasan.new(kode: counter_alpha(AKemasan.count, 2, "AKemasan.maximum('kode')"))
    common_form(@@table_name, @@title, @a_kemasan)
  end

  def edit
    common_form(@@table_name, @@title, @a_kemasan)
  end

  def create
    @a_kemasan = AKemasan.new(params[:a_kemasan].merge({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @a_kemasan.save
        format.html { redirect_to @a_kemasan, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_kemasan, status: :created, location: @a_kemasan }
      else
        format.html { common_form(@@table_name, @@title, @a_kemasan) }
        format.json { render json: @a_kemasan.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_kemasan.update_attributes(params[:a_kemasan].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_kemasan, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_kemasan) }
        format.json { render json: @a_kemasan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_kemasan.destroy
    respond_to do |format|
      format.html { redirect_to a_kemasans_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_kemasan)
  end

  def search
    queries = {}
    AKemasan.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_kemasans = AKemasan.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{AKemasan.human_attribute_name(key).titleize} = \"#{key == 'id_satuan' ? @a_kemasans.first.a_satuan.nama : value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "a_kemasans/index"
  end

private
  def find_a_kemasan_by_id
    @a_kemasan = AKemasan.find_by_id(params[:id])
    if @a_kemasan.blank?
      respond_to do |format|
        format.html { redirect_to a_kemasans_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @select_box_attr = { style: "width: 314px;" }
    @select_box_attr.merge!({ class: 'required' }) if ['new', 'edit', 'create', 'update'].include?(action_name)
    @select_box_attr.merge!({ readonly: 'true', disabled: 'disabled' }) if ['show', 'destroy_show'].include?(action_name)
    @hidden_columns = ["id", "created_at", "updated_at", "updated_by"]
  end
end
