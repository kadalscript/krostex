class ASettingProgramsController < ApplicationController
  # GET /a_setting_programs
  # GET /a_setting_programs.json
  def index
    @a_setting_programs = ASettingProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @a_setting_programs }
    end
  end

  # GET /a_setting_programs/1
  # GET /a_setting_programs/1.json
  def show
    @a_setting_program = ASettingProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @a_setting_program }
    end
  end

  # GET /a_setting_programs/new
  # GET /a_setting_programs/new.json
  def new
    @a_setting_program = ASettingProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @a_setting_program }
    end
  end

  # GET /a_setting_programs/1/edit
  def edit
    @a_setting_program = ASettingProgram.find(params[:id])
  end

  # POST /a_setting_programs
  # POST /a_setting_programs.json
  def create
    @a_setting_program = ASettingProgram.new(params[:a_setting_program])

    respond_to do |format|
      if @a_setting_program.save
        format.html { redirect_to @a_setting_program, notice: 'A setting program was successfully created.' }
        format.json { render json: @a_setting_program, status: :created, location: @a_setting_program }
      else
        format.html { render action: "new" }
        format.json { render json: @a_setting_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /a_setting_programs/1
  # PUT /a_setting_programs/1.json
  def update
    @a_setting_program = ASettingProgram.find(params[:id])

    respond_to do |format|
      if @a_setting_program.update_attributes(params[:a_setting_program])
        format.html { redirect_to @a_setting_program, notice: 'A setting program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @a_setting_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_setting_programs/1
  # DELETE /a_setting_programs/1.json
  def destroy
    @a_setting_program = ASettingProgram.find(params[:id])
    @a_setting_program.destroy

    respond_to do |format|
      format.html { redirect_to a_setting_programs_url }
      format.json { head :no_content }
    end
  end
end
