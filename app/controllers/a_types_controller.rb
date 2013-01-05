class ATypesController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_type_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_types = AType.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_types }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_type }
    end
  end

  def new
    @a_type = AType.new(kode: counter_alpha(AType.count, 1, "AType.maximum('kode')"))
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_type }
    end
  end

  def edit; end

  def create
    @a_type = AType.new(params[:a_type].merge({updated_by: current_admin_ms_user.login_name}))
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
