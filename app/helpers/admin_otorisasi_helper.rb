module AdminOtorisasiHelper
  def InitNavigasi(prm_id_menu, prm_id_group, prm_id_group_parent, prm_totalmenu) 
      totalNav  = 0 
      hasil     = ""
    
      if (@prm_id_group_parent=="ROOT")  
         sqlTxt = " SELECT 
                        a.id_menu       , a.id_modul, b.id_navigasi
                      , c.nama_navigasi  
                    FROM 
                        admin_ms_menus                  a 
                    INNER JOIN admin_ms_modul_navigasis b ON a.id_modul=b.id_modul 
                    INNER JOIN admin_ms_navigasis       c ON b.id_navigasi=c.id_navigasi 
                    WHERE a.id_menu='#{prm_id_menu}'"
      else
         sqlTxt = " SELECT 
                         a.id_menu      , a.id_group, a.id_navigasi
                       , b.nama_navigasi 
                   FROM 
                         admin_ms_menu_group_navs a 
                   INNER JOIN admin_ms_navigasis  b ON  a.id_navigasi=b.id_navigasi 
                   WHERE a.id_group='#{prm_id_group_parent}' 
                     AND a.id_menu='#{prm_id_menu}'"
      end 
      ActiveRecord::Base.connection.execute(sqlTxt) 
  end
end
