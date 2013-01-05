class ALevelFoursController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show]
  before_filter :find_a_level_four_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]

  def index
    @a_level_fours = ALevelFour.page(params[:page]).per(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_level_fours }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_level_four }
    end
  end

  def new
    @a_level_four = ALevelFour.new(kode: counter_alpha(ALevelFour.count, 1, "ALevelFour.maximum('kode')"))
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_level_four }
    end
  end

  def edit; end

  def create
    @a_level_four = ALevelFour.new(params[:a_level_four].merge({updated_by: current_admin_ms_user.login_name}))
    respond_to do |format|
      if @a_level_four.save
        format.html { redirect_to @a_level_four, notice: 'Data berhasil dibuat' }
        format.json { render json: @a_level_four, status: :created, location: @a_level_four }
      else
        format.html { render action: "new" }
        format.json { render json: @a_level_four.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @a_level_four.update_attributes(params[:a_level_four].merge({updated_by: current_admin_ms_user.login_name}))
        format.html { redirect_to @a_level_four, notice: 'Data berhasil diupdate' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_level_four.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @a_level_four.destroy
    respond_to do |format|
      format.html { redirect_to a_level_fours_url, notice: 'Data berhasil di hapus' }
      format.json { head :no_content }
    end
  end

  def destroy_show; end

  def search
    query = {}
    ALeverFour.column_names.each { |column_name| query.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @a_lever_fours = ALevelFour.where(query).page(params[:page]).per(5)
    render template: "a_level_fours/index"
  end

private
  def find_a_level_four_by_id
    @a_level_four = ALevelFour.find_by_id(params[:id])
    if @a_level_four.blank?
      flash[:alert] = "Data tidak ditemukan"
      redirect_to a_lever_fours_path
    end
  end  
end
