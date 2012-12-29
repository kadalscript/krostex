class ACompanyProfilesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_a_company_profile_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_company_profiles = ACompanyProfile.page(params[:page]).per(5).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_company_profiles }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_company_profile }
    end
  end

  def new
    @a_company_profile = ACompanyProfile.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_company_profile }
    end
  end

  def edit; end

  def create
    @a_company_profile = ACompanyProfile.new(params[:a_company_profile])
    respond_to do |format|
      if @a_company_profile.save
        format.html { redirect_to @a_company_profile, notice: 'Company profile berhasil dibuat' }
        format.json { render json: @a_company_profile, status: :created, location: @a_company_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @a_company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_company_profile.update_attributes(params[:a_company_profile])
        format.html { redirect_to @a_company_profile, notice: 'Company profile berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_company_profile.destroy
    respond_to do |format|
      format.html { redirect_to a_company_profiles_url, notice: "Company profile berhasil di hapus" }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

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
      flash[:alert] = "Company profile tidak ditemukan"
      redirect_to a_company_profiles_path
    end
  end
end
