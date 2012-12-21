class AdminMsUrlBacksController < ApplicationController
  # GET /admin_ms_url_backs
  # GET /admin_ms_url_backs.json
  def index
    @admin_ms_url_backs = AdminMsUrlBack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_ms_url_backs }
    end
  end

  # GET /admin_ms_url_backs/1
  # GET /admin_ms_url_backs/1.json
  def show
    @admin_ms_url_back = AdminMsUrlBack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_url_back }
    end
  end

  # GET /admin_ms_url_backs/new
  # GET /admin_ms_url_backs/new.json
  def new
    @admin_ms_url_back = AdminMsUrlBack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_url_back }
    end
  end

  # GET /admin_ms_url_backs/1/edit
  def edit
    @admin_ms_url_back = AdminMsUrlBack.find(params[:id])
  end

  # POST /admin_ms_url_backs
  # POST /admin_ms_url_backs.json
  def create
    @admin_ms_url_back = AdminMsUrlBack.new(params[:admin_ms_url_back])

    respond_to do |format|
      if @admin_ms_url_back.save
        format.html { redirect_to @admin_ms_url_back, notice: 'Admin ms url back was successfully created.' }
        format.json { render json: @admin_ms_url_back, status: :created, location: @admin_ms_url_back }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_url_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_url_backs/1
  # PUT /admin_ms_url_backs/1.json
  def update
    @admin_ms_url_back = AdminMsUrlBack.find(params[:id])

    respond_to do |format|
      if @admin_ms_url_back.update_attributes(params[:admin_ms_url_back])
        format.html { redirect_to @admin_ms_url_back, notice: 'Admin ms url back was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_url_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_url_backs/1
  # DELETE /admin_ms_url_backs/1.json
  def destroy
    @admin_ms_url_back = AdminMsUrlBack.find(params[:id])
    @admin_ms_url_back.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_url_backs_url }
      format.json { head :no_content }
    end
  end
end
