class AdminMsMenusController < ApplicationController
  # GET /admin_ms_menus
  # GET /admin_ms_menus.json
  def index
    prm_ip = "#{remoteIP}#{'a'}"
    deleteMenuUserGroup(prm_ip)
    dataMenuAwal = inisialisasiMenuAwal(prm_ip)

    @noUrut = 0
    dataMenuAwal.each do |row|
      @nomor = fillData(@noUrut.to_s(),"0","L",2)
      
      fillGenerateMenuTable(prm_ip, @nomor, row['id_menu'], '<li>',
        row['nm_url'], 0, row['namamenu'])

      fillGenerateMenuTable(prm_ip, "#{@nomor}#{'end'}", '', '</li>',
        '', 1, '' )

      @noUrut +=1
    end
    
    inisialisasiMenuProses(@@prm_id_group, prm_ip) ;
    @main = init_data_menu_show(prm_ip)
  end

  def fillGenerateMenuTable(prm_ip_address, prm_no_urut, prm_id_menu, prm_simbol,
    prm_nm_url, prm_status, prm_keterangan) 

    sqlTxtVar = "INSERT INTO admin_ms_menu_generates
    (
    ip_address ,no_urut, id_menu
    ,simbol, nm_url, status 
    ,keterangan, created_at , updated_at 
    ) VALUES (
    '#{prm_ip_address}', '#{prm_no_urut}', '#{prm_id_menu}',
    '#{prm_simbol}', '#{prm_nm_url}', #{prm_status}, 
    '#{prm_keterangan}', '#{Time.new}', '#{Time.new}'    
    )" 

    ActiveRecord::Base.connection.execute(sqlTxtVar);      
  end

  def inisialisasiMenuAwal(prm_ip) 
    @id_menu       = "0000"
    @@prm_id_group = "00" 

    sqlTxtVar = "SELECT 
    a.id_menu       , a.id_group  ,  b.namamenu  , 
    b.id_menu_parent, b.nourut    ,  c.keterangan, 
    c.nm_url 
    FROM  admin_ms_menu_groups a 
    INNER JOIN admin_ms_menus  b on a.id_menu =b.id_menu
    INNER JOIN admin_ms_moduls c on b.id_modul=c.id_modul 
    WHERE      
    a.id_group  ='#{@@prm_id_group}' 
    AND  b.id_menu_parent='#{@id_menu}' 
    ORDER BY  b.nourut "

    ActiveRecord::Base.connection.execute(sqlTxtVar)
  end

  def deleteMenuUserGroup(prm_ip)
    sqlTxtVar = "DELETE FROM admin_ms_menu_generates WHERE ip_address='#{prm_ip}' " ;
    # puts sqlTxtVar ;
    ActiveRecord::Base.connection.execute(sqlTxtVar) 
  end

  def inisialisasiMenuProses(prm_id_group, prm_ip)
    @ok = 1
    while @ok == 1
      sqlTxtVar =  "SELECT 
      * 
      FROM  admin_ms_menu_generates 
      WHERE      
      ip_address ='#{prm_ip}' 
      AND status     =0 
      AND  COALESCE(nm_url,'')    ='' 
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
        ip_address  ='#{prm_ip}' 
        AND no_urut     ='#{rowP['no_urut']}'" 

        # puts "#{'SqlTxt = '}#{sqlTxtVar}"
        # pppppppp
        sqlExecute(sqlTxtVar)
       
        @no   = fillData(@i.to_s() ,'0','L',2) 
        @myno = "#{rowP['no_urut']}#{'.'}#{@no}"
       
        inisialisasiMenuCreated(rowP['id_menu'], @myno, prm_id_group, prm_ip)
      end  
    end
  end  

    def inisialisasiMenuCreated(prm_id_menu, prm_myno, prm_myGroup, prm_ip)

      prm_sql_txt = "SELECT 
      a.id_menu    , a.id_menu_parent          , a.status1  
      , a.nourut     , a.id_modul                , a.namamenu 
      , b.keterangan , b.keterangan as modulname , b.nm_url    
      
      FROM  
      admin_ms_menus    a 
      INNER JOIN  admin_ms_moduls   b ON a.id_modul=b.id_modul 
      WHERE      
      a.id_menu_parent= '#{prm_id_menu}'
      
      ORDER BY  a.nourut " 
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
          ''
          ) ;
         fillGenerateMenuTable(
          prm_ip, "#{prm_myno}#{'end'}", '',
          '</ul>'          , ''        ,  1,
          ''
          ) ;
         
       else 
         @no    = fillData(@k.to_s(),"0","L",2) ;
         @myno1 = "#{prm_myno}#{'.'}#{@no}"
       end

       fillGenerateMenuTable(
        prm_ip  , @myno1             , rowC['id_menu'],
        '<li>'      , rowC['nm_url']     , 0,
        rowC['namamenu']
        ) ;
       fillGenerateMenuTable(
        prm_ip  , "#{@myno1}#{'end'}",'',
        '</li>'    , ''                 , 1,
        ''
        );      

     end
   end

  def init_data_menu_show(prm_ip)
    prm_sql_txt = "SELECT a.*, b.addparam 
    FROM admin_ms_menu_generates a 
    LEFT OUTER JOIN admin_ms_menus b ON a.id_menu=b.id_menu
    WHERE a.ip_address='#{prm_ip}'
    ORDER BY  a.no_urut "
    # puts "#{'sqlTxt = '}#{prm_sql_txt}"
    ActiveRecord::Base.connection.execute(prm_sql_txt)  
  end

  # GET /admin_ms_menus/1
  # GET /admin_ms_menus/1.json
  def show
    @admin_ms_menu = AdminMsMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_ms_menu }
    end
  end

  # GET /admin_ms_menus/new
  # GET /admin_ms_menus/new.json
  def new
    @admin_ms_menu = AdminMsMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_ms_menu }
    end
  end

  # GET /admin_ms_menus/1/edit
  def edit
    @admin_ms_menu = AdminMsMenu.find(params[:id])
  end

  # POST /admin_ms_menus
  # POST /admin_ms_menus.json
  def create
    @admin_ms_menu = AdminMsMenu.new(params[:admin_ms_menu])

    respond_to do |format|
      if @admin_ms_menu.save
        format.html { redirect_to @admin_ms_menu, notice: 'Admin ms menu was successfully created.' }
        format.json { render json: @admin_ms_menu, status: :created, location: @admin_ms_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_ms_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin_ms_menus/1
  # PUT /admin_ms_menus/1.json
  def update
    @admin_ms_menu = AdminMsMenu.find(params[:id])

    respond_to do |format|
      if @admin_ms_menu.update_attributes(params[:admin_ms_menu])
        format.html { redirect_to @admin_ms_menu, notice: 'Admin ms menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_ms_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_ms_menus/1
  # DELETE /admin_ms_menus/1.json
  def destroy
    @admin_ms_menu = AdminMsMenu.find(params[:id])
    @admin_ms_menu.destroy

    respond_to do |format|
      format.html { redirect_to admin_ms_menus_url }
      format.json { head :no_content }
    end
  end

end
