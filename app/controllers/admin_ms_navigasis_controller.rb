class AdminMsNavigasisController < ApplicationController
  # GET /admin_ms_navigasis
  # GET /admin_ms_navigasis.json
  def index
    @admin_ms_navigasis = AdminMsNavigasi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_ms_navigasis }
    end
  end

  # GET /admin_ms_navigasis/1
  # GET /admin_ms_navigasis/1.json
  def show
    @admin_ms_navigasi = AdminMsNavigasi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_navigasi }
    end
  end

  # GET /admin_ms_navigasis/new
  # GET /admin_ms_navigasis/new.json
  def new
    @admin_ms_navigasi = AdminMsNavigasi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_navigasi }
    end
  end

  # GET /admin_ms_navigasis/1/edit
  def edit
    @admin_ms_navigasi = AdminMsNavigasi.find(params[:id])
  end

  # POST /admin_ms_navigasis
  # POST /admin_ms_navigasis.json
  def create
    @admin_ms_navigasi = AdminMsNavigasi.new(params[:admin_ms_navigasi])

    respond_to do |format|
      if @admin_ms_navigasi.save
        format.html { redirect_to @admin_ms_navigasi, notice: 'Admin ms navigasi was successfully created.' }
        format.json { render json: @admin_ms_navigasi, status: :created, location: @admin_ms_navigasi }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_navigasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_navigasis/1
  # PUT /admin_ms_navigasis/1.json
  def update
    @admin_ms_navigasi = AdminMsNavigasi.find(params[:id])

    respond_to do |format|
      if @admin_ms_navigasi.update_attributes(params[:admin_ms_navigasi])
        format.html { redirect_to @admin_ms_navigasi, notice: 'Admin ms navigasi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_navigasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_navigasis/1
  # DELETE /admin_ms_navigasis/1.json
  def destroy
    @admin_ms_navigasi = AdminMsNavigasi.find(params[:id])
    @admin_ms_navigasi.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_navigasis_url }
      format.json { head :no_content }
    end
  end
end
