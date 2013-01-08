class ATypesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_type_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

 
  def index
    @a_types = AType.page(params[:page]).per(PAGINATE)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_types }
    end
  end

  def show
    @a_departments = ADepartment.all
    @a_golongans   = AGolongan.all

    @read_only         = true
    @read_only_key     = true
    @read_only_always  = true
    @disabled          = true

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_type }
    end
  end

  def new
    @a_type            = AType.new(kode: counter_alpha(AType.count, 1, "AType.maximum('kode')"))
    @a_departments     = ADepartment.all
    @a_golongans       = AGolongan.all

    @read_only         = false
    @read_only_key     = false
    @read_only_always  = true
    @disabled          = false

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_type }
    end
  end

  def edit
    @a_departments = ADepartment.all
    @a_golongans   = AGolongan.all

    @read_only         = false
    @read_only_key     = true
    @read_only_always  = true
    @disabled          = true

  end

  def create
    @a_type = AType.new(params[:a_type].merge({updated_by: current_admin_ms_user.login_name}))
    @a_departments = ADepartment.all
    respond_to do |format|
      if @a_type.save
        format.html { redirect_to @a_type, notice: 'Data berhasil disimpan' }
        format.json { render json: @a_type, status: :created, location: @a_type }
      else
        format.html { render action: "new" }
        format.json { render json: @a_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_type.update_attributes(params[:a_type].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_type, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_show
    @a_departments     = ADepartment.all
    @a_golongans       = AGolongan.all

    @read_only         = true
    @read_only_key     = true
    @read_only_always  = true
    @disabled          = true
  end

  def destroy
    @a_type.destroy
    respond_to do |format|
      format.html { redirect_to a_types_url, notice: 'Data berhasil dihapus' }
      format.json { head :no_content }
    end
  end

private
  def find_a_type_by_id
    @a_type = AType.find_by_id(params[:id])
    if @a_type.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_types_path
    end
  end
end
