class AdminMsModulsController < ApplicationController

  def index
    @admin_ms_moduls = AdminMsModul.page(params[:page]).per(5)
  end

  def show
    @admin_ms_modul = AdminMsModul.find(params[:id])
    @admin_ms_modul_navigasis = AdminMsModulNavigasi.where(id_modul: @admin_ms_modul.id_modul).page(params[:page]).per(5)
    @admin_ms_modul_navigasi = AdminMsModulNavigasi.new(id_modul: @admin_ms_modul.id_modul)
  end

  def new
    @admin_ms_modul = AdminMsModul.new
  end

  def edit
    @admin_ms_modul = AdminMsModul.find(params[:id])
  end

  def create
    @admin_ms_modul = AdminMsModul.new(params[:admin_ms_modul])

    if @admin_ms_modul.save
      redirect_to @admin_ms_modul, notice: 'Admin ms modul was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @admin_ms_modul = AdminMsModul.find(params[:id])

    if @admin_ms_modul.update_attributes(params[:admin_ms_modul])
      redirect_to @admin_ms_modul, notice: 'Admin ms modul was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy_show
    @admin_ms_modul = AdminMsModul.find(params[:id])
  end

  def destroy
    @admin_ms_modul = AdminMsModul.find(params[:id])
    @admin_ms_modul.destroy
    
    redirect_to admin_ms_moduls_url
  end
end
