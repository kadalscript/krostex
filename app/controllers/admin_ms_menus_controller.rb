class AdminMsMenusController < ApplicationController
  # GET /admin_ms_menus
  # GET /admin_ms_menus.json
  def index
    @admin_ms_menus = AdminMsMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_ms_menus }
    end
  end

  # GET /admin_ms_menus/1
  # GET /admin_ms_menus/1.json
  def show
    @admin_ms_menu = AdminMsMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_menu }
    end
  end

  # GET /admin_ms_menus/new
  # GET /admin_ms_menus/new.json
  def new
    @admin_ms_menu = AdminMsMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_menu }
    end
  end

  # GET /admin_ms_menus/1/edit
  def edit
    @admin_ms_menu = AdminMsMenu.find(params[:id])
  end

  # POST /admin_ms_menus
  # POST /admin_ms_menus.json
  def create
    @admin_ms_menu = AdminMsMenu.new(params[:admin_ms_menu])

    respond_to do |format|
      if @admin_ms_menu.save
        format.html { redirect_to @admin_ms_menu, notice: 'Admin ms menu was successfully created.' }
        format.json { render json: @admin_ms_menu, status: :created, location: @admin_ms_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_menus/1
  # PUT /admin_ms_menus/1.json
  def update
    @admin_ms_menu = AdminMsMenu.find(params[:id])

    respond_to do |format|
      if @admin_ms_menu.update_attributes(params[:admin_ms_menu])
        format.html { redirect_to @admin_ms_menu, notice: 'Admin ms menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_menus/1
  # DELETE /admin_ms_menus/1.json
  def destroy
    @admin_ms_menu = AdminMsMenu.find(params[:id])
    @admin_ms_menu.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_menus_url }
      format.json { head :no_content }
    end
  end
end
