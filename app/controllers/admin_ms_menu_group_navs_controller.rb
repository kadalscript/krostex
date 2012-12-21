class AdminMsMenuGroupNavsController < ApplicationController
  # GET /admin_ms_menu_group_navs
  # GET /admin_ms_menu_group_navs.json
  def index
    @admin_ms_menu_group_navs = AdminMsMenuGroupNav.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_ms_menu_group_navs }
    end
  end

  # GET /admin_ms_menu_group_navs/1
  # GET /admin_ms_menu_group_navs/1.json
  def show
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_menu_group_nav }
    end
  end

  # GET /admin_ms_menu_group_navs/new
  # GET /admin_ms_menu_group_navs/new.json
  def new
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_menu_group_nav }
    end
  end

  # GET /admin_ms_menu_group_navs/1/edit
  def edit
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.find(params[:id])
  end

  # POST /admin_ms_menu_group_navs
  # POST /admin_ms_menu_group_navs.json
  def create
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.new(params[:admin_ms_menu_group_nav])

    respond_to do |format|
      if @admin_ms_menu_group_nav.save
        format.html { redirect_to @admin_ms_menu_group_nav, notice: 'Admin ms menu group nav was successfully created.' }
        format.json { render json: @admin_ms_menu_group_nav, status: :created, location: @admin_ms_menu_group_nav }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_menu_group_nav.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_menu_group_navs/1
  # PUT /admin_ms_menu_group_navs/1.json
  def update
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.find(params[:id])

    respond_to do |format|
      if @admin_ms_menu_group_nav.update_attributes(params[:admin_ms_menu_group_nav])
        format.html { redirect_to @admin_ms_menu_group_nav, notice: 'Admin ms menu group nav was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_menu_group_nav.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_menu_group_navs/1
  # DELETE /admin_ms_menu_group_navs/1.json
  def destroy
    @admin_ms_menu_group_nav = AdminMsMenuGroupNav.find(params[:id])
    @admin_ms_menu_group_nav.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_menu_group_navs_url }
      format.json { head :no_content }
    end
  end
end
