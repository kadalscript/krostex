class ACompanyProfilesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_company_profile_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous
  
  @@title = 'company profile'
  @@table_name = ACompanyProfile.table_name

  def index
    @a_company_profiles = ACompanyProfile.page(params[:page]).per(PAGINATE).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_company_profiles }
    end
  end

  def show
    common_form(@@table_name, @@title, @a_company_profile)
  end

  def new
    @a_company_profile = ACompanyProfile.new
    common_form(@@table_name, @@title, @a_company_profile)
  end

  def edit
    common_form(@@table_name, @@title, @a_company_profile)
  end

  def create
    @a_company_profile = ACompanyProfile.new(params[:a_company_profile])
    respond_to do |format|
      if @a_company_profile.save
        format.html { redirect_to @a_company_profile, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @a_company_profile, status: :created, location: @a_company_profile }
      else
        format.html { common_form(@@table_name, @@title, @a_company_profile) }
        format.json { render json: @a_company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_company_profile.update_attributes(params[:a_company_profile])
        format.html { redirect_to @a_company_profile, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @a_company_profile) }
        format.json { render json: @a_company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_company_profile.destroy
    respond_to do |format|
      format.html { redirect_to a_company_profiles_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @a_company_profile)
  end

  def search
    queries = {}
    ACompanyProfile.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }      
    @a_company_profiles = ACompanyProfile.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ACompanyProfile.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "a_company_profiles/index"
  end

private
  def find_a_company_profile_by_id
    @a_company_profile = ACompanyProfile.find_by_id(params[:id])
    if @a_company_profile.blank?
      respond_to do |format|
        format.html { redirect_to a_company_profiles_path, alert: NOT_FOUND_DATA }
        format.json { head :no_content }
      end
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["kode", "id", "created_at", "updated_at", "alamat_01", "alamat_02", "alamat_03"]
  end
end
