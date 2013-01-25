class ABanksController < ApplicationController
  before_filter :attributes, only: [:new, :show, :edit, :destroy_show, :create, :update]
  before_filter :find_bank_by_id, only: [:show, :edit, :update, :destroy, :destroy_show]
  before_filter :get_miscellaneous

  @@title = 'bank'
  @@table_name = ABank.table_name

  def index
    @banks = ABank.page(params[:page]).per(PAGINATE).order('id')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banks }
    end
  end

  def show
    common_form(@@table_name, @@title, @bank)
  end

  def new
    @bank = ABank.new
    common_form(@@table_name, @@title, @bank)
  end

  def edit
    common_form(@@table_name, @@title, @bank)
  end

  def create
    @bank = ABank.new(params[:a_bank])
    respond_to do |format|
      if @bank.save
        format.html { redirect_to @bank, notice: SUCCESSFULLY_SAVE_DATA }
        format.json { render json: @bank, status: :created, location: @bank }
      else
        format.html { common_form(@@table_name, @@title, @bank) }
        format.json { render json: @bank.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bank.update_attributes(params[:a_bank])
        format.html { redirect_to @bank, notice: SUCCESSFULLY_UPDATE_DATA }
        format.json { head :no_content }
      else
        format.html { common_form(@@table_name, @@title, @bank) }
        format.json { render json: @bank.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bank.destroy
    respond_to do |format|
      format.html { redirect_to a_banks_url, notice: SUCCESSFULLY_DELETE_DATA }
      format.json { head :no_content }
    end
  end

  def destroy_show
    common_form(@@table_name, @@title, @bank)
  end

  def search
    queries = {}
    ABank.column_names.each { |column_name| queries.merge!({ column_name => params[column_name] }) if params[column_name].present? }
    @banks = ABank.where(queries).page(params[:page]).per(12)
    notifications = ""
    queries.each_pair { |key, value| notifications += "#{ABank.human_attribute_name(key).titleize} = \"#{value}\"<br />" }
    flash.now[:notice] = "Hasil pencarian :<br /> #{notifications}".html_safe
    render template: "#{@@table_name}/index"
  end

private
  def find_bank_by_id
    @bank = ABank.find_by_id(params[:id])
    if @bank.blank?
      flash[:alert] = NOT_FOUND_DATA
      redirect_to a_banks_path
    end
  end

  def get_miscellaneous
    @title = @@title
    @hidden_columns = ["id", "created_at"]
    @read_only_attributes = { readonly: true, disabled: 'disabled', style: 'width: 300px;' }
  end
end
