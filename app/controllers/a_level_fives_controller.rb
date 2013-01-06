class ALevelFivesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_level_five_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_level_fives = ALevelFive.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_level_fives }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_level_fife }
    end
  end

  def new
    @a_level_fife = ALevelFive.new(kode: counter_alpha(ALevelFive.count, 1, "ALevelFive.maximum('kode')"))
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_level_fife }
    end
  end

  def edit
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all
  end

  def create
    @a_level_fife = ALevelFive.new(params[:a_level_five].merge({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @a_level_fife.save
        format.html { redirect_to @a_level_fife, notice: 'Data berhasil dibuat' }
        format.json { render json: @a_level_fife, status: :created, location: @a_level_fife }
      else
        format.html { render action: "new" }
        format.json { render json: @a_level_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_level_fife.update_attributes(params[:a_level_five].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_level_fife, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_level_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_level_fife.destroy
    respond_to do |format|
      format.html { redirect_to a_level_fives_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show
    @a_departments = ADepartment.all
    @a_golongans = AGolongan.all
    @a_types = AType.all
    @a_level_fours = ALevelFour.all
  end

  def search
    query = {}
    ALevelFive.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_level_fives = ALevelFive.where(query).page(params[:page]).per(5)
    render template: "a_level_fives/index"
  end

private
  def find_a_level_five_by_id
    @a_level_fife = ALevelFive.find_by_id(params[:id])
    if @a_level_fife.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_level_fives_path
    end
  end
end
