class MainController < ApplicationController
  def index
    if admin_ms_user_signed_in?
      randomNumber        = rand(1000000)
      params              = {}
      params[:user_id]    = current_admin_ms_user.id
      params[:user_ids]   = randomNumber 
      params[:user_idg]   = current_admin_ms_user.id_group

      $params_sys_default = params

      session[:user_id]   = current_admin_ms_user.id
      session[:user_ids]  = randomNumber
    end
  end
end
