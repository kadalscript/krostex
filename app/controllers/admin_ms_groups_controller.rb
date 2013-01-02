class AdminMsGroupsController < ApplicationController
  # GET /admin_ms_groups
  # GET /admin_ms_groups.json
  def index
    @admin_ms_groups = AdminMsGroup.page(params[:page]).per(5)
  end

  # GET /admin_ms_groups/1
  # GET /admin_ms_groups/1.json
  def show
    @admin_ms_group = AdminMsGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_group }
    end
  end

  # GET /admin_ms_groups/new
  # GET /admin_ms_groups/new.json
  def new
    @admin_ms_group = AdminMsGroup.new
    @admin_ms_groups = AdminMsGroup.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_group }
    end
  end

  # GET /admin_ms_groups/1/edit
  def edit
    @admin_ms_group = AdminMsGroup.find(params[:id])
    @admin_ms_groups = AdminMsGroup.all
  end

  # POST /admin_ms_groups
  # POST /admin_ms_groups.json
  def create
    @admin_ms_group = AdminMsGroup.new(params[:admin_ms_group])

    respond_to do |format|
      if @admin_ms_group.save
        format.html { redirect_to @admin_ms_group, notice: 'Admin ms group was successfully created.' }
        format.json { render json: @admin_ms_group, status: :created, location: @admin_ms_group }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_groups/1
  # PUT /admin_ms_groups/1.json
  def update
    @admin_ms_group = AdminMsGroup.find(params[:id])

    respond_to do |format|
      if @admin_ms_group.update_attributes(params[:admin_ms_group])
        format.html { redirect_to @admin_ms_group, notice: 'Admin ms group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_show
    @admin_ms_group = AdminMsGroup.find(params[:id])
    @admin_ms_groups = AdminMsGroup.all
  end

  def destroy
    @admin_ms_group = AdminMsGroup.find(params[:id])
    @admin_ms_group.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_groups_url }
      format.json { head :no_content }
    end
  end
end
