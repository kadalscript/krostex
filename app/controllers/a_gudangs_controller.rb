class AGudangsController < ApplicationController
  def search
    condition_query = {}
    
    condition_query.merge!({simbol: params[:kode]}) if params[:kode].present?
    condition_query.merge!({nama: params[:nama]}) if params[:nama].present?
    condition_query.merge!({st_progress: params[:status]}) if params[:status].present?
    condition_query.merge!({update_by: params[:diinput]}) if params[:diinput].present?
    
    @a_gudangs = AGudang.where(condition_query).page(params[:page]).per(12)

    render template: "a_gudangs/index"
  end

  # GET /a_gudangs
  # GET /a_gudangs.json
  def index
    @a_gudangs = AGudang.page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_gudangs }
    end
  end

  # GET /a_gudangs/1
  # GET /a_gudangs/1.json
  def show
    @a_gudang = AGudang.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_gudang }
    end
  end

  # GET /a_gudangs/new
  # GET /a_gudangs/new.json
  def new
    @a_gudang = AGudang.new(status1: 0)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_gudang }
    end
  end

  # GET /a_gudangs/1/edit
  def edit
    @a_gudang = AGudang.find(params[:id])
  end

  def destroy_show
     @a_gudang = AGudang.find(params[:id])
  end

  # POST /a_gudangs
  # POST /a_gudangs.json
  def create
    @a_gudang = AGudang.new(params[:a_gudang])

    respond_to do |format|
      if @a_gudang.save
        format.html { redirect_to @a_gudang, notice: 'A gudang was successfully created.' }
        format.json { render json: @a_gudang, status: :created, location: @a_gudang }
      else
        format.html { render action: "new" }
        format.json { render json: @a_gudang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /a_gudangs/1
  # PUT /a_gudangs/1.json
  def update
    @a_gudang = AGudang.find(params[:id])

    respond_to do |format|
      if @a_gudang.update_attributes(params[:a_gudang])
        format.html { redirect_to @a_gudang, notice: 'A gudang was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_gudang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_gudangs/1
  # DELETE /a_gudangs/1.json
  def destroy
    @a_gudang = AGudang.find(params[:id])
    @a_gudang.destroy

    respond_to do |format|
      format.html { redirect_to a_gudangs_url, notice: 'Data dihapus.' }
      format.json { head :no_content }
    end
  end
end
