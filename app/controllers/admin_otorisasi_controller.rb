class AdminOtorisasiController < ApplicationController
  def admin_otorisasi_save
    menus = AdminMsMenuGroup.where(id_group: params[:prm_id_group])
    menus.destroy_all

    total_menu = params[:totalmenu].to_i
    total_menu.times do |counter|
      if not params["M#{counter+1}"].blank?
        AdminMsMenuGroup.create(:id_menu => params["M#{counter+1}"], :id_group => params[:id_group], :statusmenu =>1)
      end
    end

    redirect_to :back
  end

  def deleteMenuOtotisasiGroup(prm_ip)
   sqlTxtVar = "DELETE FROM admin_ms_menu_generates WHERE ip_address='#{prm_ip}' " ;
         # puts sqlTxtVar ;
         ActiveRecord::Base.connection.execute(sqlTxtVar) 
       end

       def inisialisasiOtorisasiAwal(prm_id_group ) 
        sqlTxtVar  = "SELECT a.id_group    as id_menu , a.id_group_parent as id_menuref, 
        a.statusgroup as status1 , a.namagroup as namamenu 
        FROM   admin_ms_groups a 
        WHERE  a.id_group='#{prm_id_group}'" ;  

        ActiveRecord::Base.connection.execute(sqlTxtVar) ;
      end

      def inisialisasiOtorisasiAwalFrm(prm_id_group, prm_id_group_parent)

       if (prm_id_group_parent!="ROOT") 
         sqlTxtVar  = " SELECT 
         a.id_menu , a.id_menu_parent, a.status1
         , a.id_modul, a.namamenu      , '' as nm_url 
         FROM 
         admin_ms_menus  a 
         INNER JOIN admin_ms_groups b on a.id_menu=b.id_menu and 
         WHERE 
         b.id_group       ='#{prm_id_group_parent}' 
         AND a.id_menu_parent ='0000'"    
       else 
         sqlTxtVar  = " SELECT 
         a.id_menu , a.id_menu_parent , a.status1
         , a.id_modul, a.namamenu       , '' as nm_url 
         FROM 
         admin_ms_menus  a 
         WHERE a.id_menu_parent='0000'"       
       end

       ActiveRecord::Base.connection.execute(sqlTxtVar) ;
     end 

     def fillGenerateMenuTable( prm_ip_address, prm_no_urut, prm_id_menu,
       prm_simbol    , prm_nm_url , prm_status,
       prm_keterangan, prm_id_menu_parent 
       ) 

     sqlTxtVar = "INSERT INTO admin_ms_menu_generates
     (
      ip_address    ,no_urut     , id_menu
      ,simbol        , nm_url     , status 
      ,keterangan    , created_at , updated_at
      ,id_menuref  
      ) VALUES (
      '#{prm_ip_address}', '#{prm_no_urut}', '#{prm_id_menu}'
      ,'#{prm_simbol}'    , '#{prm_nm_url}' ,#{prm_status} 
      ,'#{prm_keterangan}', '#{Time.new}'   , '#{Time.new}' 
      ,'#{prm_id_menu_parent}'       
      )" 

ActiveRecord::Base.connection.execute(sqlTxtVar) ;      
end

def inisialisasiMenuProses(prm_ip)
  @ok=1 ;
  while @ok==1
    sqlTxtVar =  "SELECT * 
    FROM  admin_ms_menu_generates 
    WHERE      
    ip_address ='#{prm_ip}' AND status     =0 
    ORDER BY  no_urut "


    tRecProses     = ActiveRecord::Base.connection.execute(sqlTxtVar) 

    @i            = 0  
    @ok           = 0 
    tRecProses.each do |rowP|
     @ok       = 1 
     @i       += 1
     sqlTxtVar = "UPDATE 
     admin_ms_menu_generates 
     SET 
     status=1     
     WHERE      
     ip_address  ='#{prm_ip}' AND no_urut     ='#{rowP['no_urut']}'" 

     sqlExecute(sqlTxtVar)

     @no   = fillData(@i.to_s() ,'0','L',2) 
     @myno = "#{rowP['no_urut']}#{'.'}#{@no}"

     inisialisasiMenuCreated(rowP['id_menu'], @myno, prm_ip)
   end  
 end
end 

def inisialisasiMenuProsesFrm(prm_ip, prm_id_group, prm_id_group_parent)
  @ok=1 ;
  while @ok==1
    sqlTxtVar =  "SELECT * 
    FROM  admin_ms_menu_generates 
    WHERE      
    ip_address ='#{prm_ip}' AND status     =0 
    ORDER BY  no_urut "


    tRecProses     = ActiveRecord::Base.connection.execute(sqlTxtVar) 

    @i            = 0  
    @ok           = 0 
    tRecProses.each do |rowP|
     @ok       = 1 
     @i       += 1
     sqlTxtVar = "UPDATE 
     admin_ms_menu_generates 
     SET 
     status=1     
     WHERE      
     ip_address  ='#{prm_ip}' AND no_urut     ='#{rowP['no_urut']}'" 

     sqlExecute(sqlTxtVar)

     @no   = fillData(@i.to_s() ,'0','L',2) 
     @myno = "#{rowP['no_urut']}#{'.'}#{@no}"

     inisialisasiMenuCreatedFrm(rowP['id_menu'], @myno, prm_id_group, prm_id_group_parent, prm_ip)
   end  
 end
end   

def inisialisasiMenuCreated(prm_id_menu, prm_myno, prm_ip)

  prm_sql_txt= "SELECT 
  a.id_group as id_menu, a.id_group_parent as id_menuref, 
  a.statusgroup as status1, a.namagroup as namamenu 
  FROM 
  admin_ms_groups a 
  WHERE 
  a.id_group_parent='#{prm_id_menu}'" ;

  tRecProsesC = ActiveRecord::Base.connection.execute(prm_sql_txt)  


  @k          = 0 ;
  tRecProsesC.each do |rowC|
    @k     +=1 
    if @k==1
     @no    = fillData(@k.to_s(),"0","L",2); 
     @myno1 = "#{prm_myno}#{'.'}#{@no}";

     fillGenerateMenuTable(
      prm_ip, prm_myno             , '',
      '<ul>'  , ''                 , 1 ,
      ''      , ''
      ) ;
     fillGenerateMenuTable(
      prm_ip, "#{prm_myno}#{'end'}", '',
      '</ul>'          , ''        ,  1,
      ''      , ''
      ) ;

   else 
     @no    = fillData(@k.to_s(),"0","L",2) ;
     @myno1 = "#{prm_myno}#{'.'}#{@no}"
   end

   fillGenerateMenuTable(
    prm_ip  , @myno1             , rowC['id_menu'],
    '<li>'   , ''                 , 0,
    rowC['namamenu'], rowC['id_menuref']
    ) ;
   fillGenerateMenuTable(
    prm_ip  , "#{@myno1}#{'end'}",'',
    '</li>'    , ''                 , 1,
    ''         , ''
    );    

 end
end

def inisialisasiMenuCreatedFrm(prm_id_menu, prm_myno, prm_id_group, prm_id_group_parent, prm_ip)
  if (prm_id_group_parent!="ROOT") 
   prm_sql_txt  = "SELECT 
   a.id_menu, a.id_menu_parent, a.status1
   , a.namamenu 
   FROM  
   admin_ms_menus  a 
   INNER JOIN  admin_ms_groups b on a.id_menu=b.id_menu and 
   WHERE  b.id_group='#{prm_id_group_parent}' 
   AND  a.id_menu_parent='#{prm_id_menu}'"
 else 
   prm_sql_txt  = "SELECT 
   a.id_menu, a.id_menu_parent, a.status1
   , a.namamenu 
   FROM admin_ms_menus a 
   WHERE a.id_menu_parent='#{prm_id_menu}'"   
 end 

 tRecProsesC = ActiveRecord::Base.connection.execute(prm_sql_txt)  


 @k          = 0 ;
 tRecProsesC.each do |rowC|
  @k     +=1 
  if @k==1
   @no    = fillData(@k.to_s(),"0","L",2); 
   @myno1 = "#{prm_myno}#{'.'}#{@no}";

   fillGenerateMenuTable(
    prm_ip, prm_myno             , '',
    '<ul>'  , ''                 , 1 ,
    ''      , ''
    ) ;
   fillGenerateMenuTable(
    prm_ip, "#{prm_myno}#{'end'}", '',
    '</ul>'          , ''        ,  1,
    ''      , ''
    ) ;

 else 
   @no    = fillData(@k.to_s(),"0","L",2) ;
   @myno1 = "#{prm_myno}#{'.'}#{@no}"
 end

 fillGenerateMenuTable(
  prm_ip  , @myno1             , rowC['id_menu'],
  '<li>'   , ''                 , 0,
  rowC['namamenu'], rowC['id_menuref']
  ) ;
 fillGenerateMenuTable(
  prm_ip  , "#{@myno1}#{'end'}",'',
  '</li>'    , ''                 , 1,
  ''         , ''
  );    

end
end

def init_data_menu_show(prm_ip)
  prm_sql_txt = "SELECT 
  a.*, b.addparam 
  FROM 
  admin_ms_menu_generates  a 
  LEFT OUTER JOIN admin_ms_menus b ON a.id_menu=b.id_menu
  WHERE      
  a.ip_address='#{prm_ip}'   
  ORDER BY  a.no_urut "
            # puts "#{'sqlTxt = '}#{prm_sql_txt}"
            ActiveRecord::Base.connection.execute(prm_sql_txt)  
          end 

          def index
            prm_ip       = "#{remoteIP}#{'b'}" ;
            prm_id_group = "00"

            deleteMenuOtotisasiGroup(prm_ip)

            dataMenuAwal     = inisialisasiOtorisasiAwal(prm_id_group)


            @noUrut          = 0
            dataMenuAwal.each do |row|
              @nomor       =  fillData(@noUrut.to_s(),"0","L",2)

              fillGenerateMenuTable(
                prm_ip         , @nomor             , row['id_menu'], 
                '<li>'         , ''                 , 0,
                row['namamenu'], row['id_menuref']   
                ) ;


              fillGenerateMenuTable(
               prm_ip          , "#{@nomor}#{'end'}", '' , 
               '</li>'          , ''                 , 1  ,
               ''               , row['id_menuref']
               ) ;
              @noUrut +=1
            end

            inisialisasiMenuProses(prm_ip) 
            @main = init_data_menu_show(prm_ip) 
          end 

          def InitNavigasi(prm_id_menu, prm_id_group, prm_id_group_parent, prm_totalmenu) 
            totalNav  = 0 
            hasil     = ""

            if (prm_id_group_parent=="ROOT")  
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

         def frm_otorisasi

          prm_ip              = "#{remoteIP}#{'d'}"
          puts "-------------------"
          puts params[:params]    
          puts "-------------------"
          puts params[:params].hex2string
          puts "-------------------"
          get                 = eval(params[:params].hex2string)
          prm_id_group        = get[:id_group]  
          prm_id_group_parent = get[:id_group_parent] 
          prm_ids             = get[:user_ids]        

          @prm_id_group        = prm_id_group    
          @prm_id_group_parent = prm_id_group_parent     

          deleteMenuOtotisasiGroup(prm_ip)
          dataMenuAwal        = inisialisasiOtorisasiAwalFrm(prm_id_group, prm_id_group_parent)

          
          @noUrut          = 0
          dataMenuAwal.each do |row|
            @nomor       =  fillData(@noUrut.to_s(),"0","L",2)

            fillGenerateMenuTable(
              prm_ip         , @nomor             , row['id_menu'], 
              '<li>'         , ''                 , 0,
              row['namamenu'], row['id_menuref']   
              ) ;


            fillGenerateMenuTable(
             prm_ip          , "#{@nomor}#{'end'}", '' , 
             '</li>'          , ''                 , 1  ,
             ''               , row['id_menuref']
             ) ;
            @noUrut +=1
          end

          inisialisasiMenuProsesFrm(prm_ip, prm_id_group, prm_id_group_parent) 
          @main = init_data_menu_show(prm_ip) 
        end
      end
