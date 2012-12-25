Hermanstartup::Application.routes.draw do
  get "a_gudangs/destroy_show"
  get "a_gudangs/search"
  resources :a_gudangs

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
