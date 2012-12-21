class AdminMsModulsController < ApplicationController
  # GET /admin_ms_moduls
  # GET /admin_ms_moduls.json
  def index
    @admin_ms_moduls = AdminMsModul.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_ms_moduls }
    end
  end

  # GET /admin_ms_moduls/1
  # GET /admin_ms_moduls/1.json
  def show
    @admin_ms_modul = AdminMsModul.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_modul }
    end
  end

  # GET /admin_ms_moduls/new
  # GET /admin_ms_moduls/new.json
  def new
    @admin_ms_modul = AdminMsModul.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_modul }
    end
  end

  # GET /admin_ms_moduls/1/edit
  def edit
    @admin_ms_modul = AdminMsModul.find(params[:id])
  end

  # POST /admin_ms_moduls
  # POST /admin_ms_moduls.json
  def create
    @admin_ms_modul = AdminMsModul.new(params[:admin_ms_modul])

    respond_to do |format|
      if @admin_ms_modul.save
        format.html { redirect_to @admin_ms_modul, notice: 'Admin ms modul was successfully created.' }
        format.json { render json: @admin_ms_modul, status: :created, location: @admin_ms_modul }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_modul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_moduls/1
  # PUT /admin_ms_moduls/1.json
  def update
    @admin_ms_modul = AdminMsModul.find(params[:id])

    respond_to do |format|
      if @admin_ms_modul.update_attributes(params[:admin_ms_modul])
        format.html { redirect_to @admin_ms_modul, notice: 'Admin ms modul was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_modul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_moduls/1
  # DELETE /admin_ms_moduls/1.json
  def destroy
    @admin_ms_modul = AdminMsModul.find(params[:id])
    @admin_ms_modul.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_moduls_url }
      format.json { head :no_content }
    end
  end
end
