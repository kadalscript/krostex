Hermanstartup::Application.routes.draw do
  resources :a_mata_uangs
  resources :a_gudangs
  resources :a_company_profiles
  resources :a_satuans
  resources :a_kotas
  resources :a_provinsis
  resources :a_negaras
  resources :a_badan_usahas
  resources :a_kemasans
  resources :a_types
  resources :a_golongans
  resources :a_departments
  resources :a_template_cats
  resources :a_cities do
    collection do
      match "get_provinces"
    end
  end
  resources :a_level_fives
  resources :a_level_fours
  resources :b_barangs
  resources :b_suppliers do
    resources :b_supplier_alamats
    match "b_supplier_alamats/:id/change_form" => "b_supplier_alamats#change_form", as: :change_form
  end

  ["a_template_cats", "a_departments", "a_golongans", "a_types", "a_level_fours",
   "a_level_fives", "a_cities", "a_gudangs", "a_company_profiles", "a_satuans",
   "a_badan_usahas", "a_kemasans", "a_negaras", "a_provinsis", "b_suppliers",
   "a_mata_uangs", "b_barangs"].each do |item|
    match "#{item}/:id/destroy_show" => "#{item}#destroy_show", as: "#{item}_destroy_show"
    match "#{item}/search" => "#{item}#search"
  end

  get "admin_otorisasi/index"
  get "admin_otorisasi/frm_otorisasi"
  post "admin_otorisasi/admin_otorisasi_save"

  resources :admin_ms_url_backs
  resources :admin_ms_navigasis
  resources :admin_ms_modul_navigasis
  resources :admin_ms_moduls do
    get "destroy_show", on: :member
  end
  resources :admin_ms_menu_group_navs
  resources :admin_ms_menu_groups do
    get "destroy_show", on: :member
  end
  resources :admin_ms_menus, except: [:destroy] do
    get "delete" => "admin_ms_menus#destroy"
  end

  resources :admin_ms_groups do
    get "destroy_show", on: :member
  end

  devise_for :admin_ms_users

  get "main/index"

  root :to => 'main#index'
end