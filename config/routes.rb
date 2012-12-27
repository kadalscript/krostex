Hermanstartup::Application.routes.draw do

  ["a_gudangs", "a_company_profiles", "a_satuans", "a_badan_usahas", "a_kemasans",
   "a_negaras", "a_provinsis", "a_kotas"].each do |item|
    get "#{item}/destroy_show"
    get "#{item}/search"
  end

  resources :a_gudangs
  resources :a_company_profiles
  resources :a_satuans
  resources :a_kotas
  resources :a_provinsis
  resources :a_negaras
  resources :a_badan_usahas
  resources :a_kemasans

  resources :admin_ms_url_backs
  resources :admin_ms_navigasis
  resources :admin_ms_modul_navigasis
  resources :admin_ms_moduls do
    get "destroy_show", on: :member
  end
  resources :admin_ms_menu_group_navs
  resources :admin_ms_menu_groups
  resources :admin_ms_menus
  resources :admin_ms_groups
  
  devise_for :admin_ms_users

  get "main/index"

  root :to => 'main#index'
end
