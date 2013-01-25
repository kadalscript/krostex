class ABanksController < ApplicationController
  before_filter :get_miscellaneous

  @@title = 'Bank'
  @@table_name = ABank.table_name

  def index
    @banks = ABank.page(params[:page]).per(5)
    respond_to do |format|
      format.html
    end
  end

private

  def get_miscellaneous
    @title = @@title
  end
end
