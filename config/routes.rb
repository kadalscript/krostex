Hermanstartup::Application.routes.draw do
  resources :b_supplier_accounts
  resources :a_banks
  resources :m_warehouse_in_first_hs do
    match 'draft'
    match 'undraft'
    match "modify_destroy_form"
    match "modify_edit_form"
    resources :m_warehouse_in_second_ds
  end
  resources :m_beli_po_first_hs do
    collection do
      match "get_supplier"
      match "get_golongan"
      match "get_type"
      match "get_level_four"
      match "get_level_five"
      match ":id/draft" => "m_beli_po_first_hs#draft", as: :draft
      match ":id/undraft" => "m_beli_po_first_hs#undraft", as: :undraft
      match "get_gudang"
      match "get_mata_uang"
      match "populate_barangs"
    end
    match "modify_destroy_form"
    match "modify_edit_form"
    resources :m_beli_po_second_ds
  end
  resources :a_mata_uangs
  resources :a_gudangs
  resources :a_company_profiles
  resources :a_satuans
  resources :a_setting_programs
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
  resources :b_barangs do
    get 'combobox_change', on: :collection
  end
  resources :b_suppliers do
    resources :b_supplier_alamats
    match "b_supplier_alamats/:id/change_form" => "b_supplier_alamats#change_form", as: :change_form
  end

  ["a_template_cats", "a_departments", "a_golongans", "a_types", "a_level_fours",
   "a_level_fives", "a_cities", "a_gudangs", "a_company_profiles", "a_satuans",
   "a_badan_usahas", "a_kemasans", "a_negaras", "a_provinsis", "b_suppliers",
   "a_mata_uangs", "b_barangs", "m_beli_po_first_hs"].each do |item|
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

  # Notas routing
  resources :m_beli_nota_first_hs do
    resources :m_beli_nota_second_ds # Nota details routing
    match :draft # Adding draft action to notas routing
    match :undraft # Adding undraft action to notas routing
    match :get_alamat_supplier # Adding action for getting alamat supplier
  end

  root :to => 'main#index'
end