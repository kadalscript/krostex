class MainController < ApplicationController

  @@prm_id_group    = '00'


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

      @@prm_id_group      =   current_admin_ms_user.id_group
      # debugger

      deleteMenuUserGroup()
      dataMenuAwal = inisialisasiMenuAwal(current_admin_ms_user.id_group)
      @noUrut = 0
      dataMenuAwal.each do |row|
        @nomor = fillData(@noUrut.to_s(), "0", "L", 2)
        fillGenerateMenuTable(remoteIP, @nomor, row['id_menu'], '<li>', row['nm_url'], 0, row['namamenu'])
        fillGenerateMenuTable(remoteIP, "#{@nomor}#{'end'}", '' , '</li>', '', 1, '')
        @noUrut += 1
      end

      inisialisasiMenuProses(@@prm_id_group)

      # @dataMenuGroupRecs = init_data_menu_show

      @main = init_data_menu_show

      # respond_to do |format|
      #     format.html # show.html.erb
      #     format.json { render json: @main }
      # end
    end
  end

  def deleteMenuUserGroup()
    sqlTxtVar = "DELETE FROM admin_ms_menu_generates WHERE ip_address='#{remoteIP}' "
    # puts sqlTxtVar ;
    ActiveRecord::Base.connection.execute(sqlTxtVar)
  end

  def inisialisasiMenuAwal(prm_id_group)
    @id_menu  = "0000"
    sqlTxtVar = "SELECT a.id_menu, a.id_group, b.namamenu, b.id_menu_parent,
                        b.nourut, c.keterangan, c.nm_url
                 FROM  admin_ms_menu_groups a
                 INNER JOIN admin_ms_menus  b on a.id_menu = b.id_menu
                 INNER JOIN admin_ms_moduls c on b.id_modul=c.id_modul
                 WHERE a.id_group ='#{prm_id_group}'
                 AND b.id_menu_parent='#{@id_menu}'
                 ORDER BY b.nourut "
    # debugger              
    ActiveRecord::Base.connection.execute(sqlTxtVar)
  end

  def fillGenerateMenuTable(prm_ip_address, prm_no_urut, prm_id_menu, prm_simbol,
                            prm_nm_url, prm_status, prm_keterangan)

    sqlTxtVar = "INSERT INTO admin_ms_menu_generates
                 (ip_address, no_urut, id_menu, simbol, nm_url, status, keterangan, created_at, updated_at)
                 VALUES ('#{prm_ip_address}', '#{prm_no_urut}', '#{prm_id_menu}', '#{prm_simbol}', '#{prm_nm_url}',
                          #{prm_status}, '#{prm_keterangan}', '#{Time.new}', '#{Time.new}')"

    ActiveRecord::Base.connection.execute(sqlTxtVar)
  end

  def inisialisasiMenuProses(prm_id_group)
    @ok = 1
    while @ok == 1
      sqlTxtVar =  "SELECT * FROM  admin_ms_menu_generates
                    WHERE ip_address ='#{remoteIP}' AND status = 0
                    AND nm_url = '' ORDER BY  no_urut "

      tRecProses = ActiveRecord::Base.connection.execute(sqlTxtVar)

      @i = 0
      @ok = 0
      tRecProses.each do |rowP|
        @ok = 1
        @i += 1
        sqlTxtVar = "UPDATE admin_ms_menu_generates
                     SET status = 1
                     WHERE ip_address = '#{remoteIP}'
                     AND no_urut = '#{rowP['no_urut']}'"
        # puts "#{'SqlTxt = '}#{sqlTxtVar}"
        # pppppppp
        sqlExecute(sqlTxtVar)
        @no = fillData(@i.to_s(), '0', 'L', 2)
        @myno = "#{rowP['no_urut']}#{'.'}#{@no}"
        inisialisasiMenuCreated(rowP['id_menu'], @myno, prm_id_group)
      end
    end
  end

  def inisialisasiMenuCreated(prm_id_menu, prm_myno, prm_myGroup)
    prm_sql_txt = "SELECT a.id_menu, a.id_menu_parent, a.status1, a.nourut, a.id_modul,
                          a.namamenu, b.keterangan, b.keterangan as modulname, b.nm_url
                   FROM admin_ms_menus a
                   INNER JOIN admin_ms_moduls b ON a.id_modul = b.id_modul
                   INNER JOIN  admin_ms_menu_groups c ON a.id_menu=c.id_menu
                   WHERE a.id_menu_parent= '#{prm_id_menu}'
                   AND c.id_group  = '#{prm_myGroup}'
                   ORDER BY  a.nourut "
    tRecProsesC = ActiveRecord::Base.connection.execute(prm_sql_txt)
    @k = 0
    tRecProsesC.each do |rowC|
      @k += 1
      if @k == 1
        @no = fillData(@k.to_s(), "0", "L", 2)
        @myno1 = "#{prm_myno}#{'.'}#{@no}"
        fillGenerateMenuTable(remoteIP, prm_myno, '', '<ul>', '', 1, '')
        fillGenerateMenuTable(remoteIP, "#{prm_myno}#{'end'}", '', '</ul>', '',  1, '') 
      else
        @no = fillData(@k.to_s(), "0", "L", 2)
        @myno1 = "#{prm_myno}#{'.'}#{@no}"
      end

      fillGenerateMenuTable(remoteIP, @myno1, rowC['id_menu'], '<li>', rowC['nm_url'],
                            0, rowC['namamenu'])
      fillGenerateMenuTable(remoteIP, "#{@myno1}#{'end'}", '', '</li>', '', 1, '')
    end
  end

  def init_data_menu_show
    prm_sql_txt = "SELECT a.*, b.addparam FROM admin_ms_menu_generates a
                   LEFT OUTER JOIN admin_ms_menus b ON a.id_menu=b.id_menu
                   WHERE a.ip_address='#{remoteIP}' ORDER BY  a.no_urut "
    # puts "#{'sqlTxt = '}#{prm_sql_txt}"
    ActiveRecord::Base.connection.execute(prm_sql_txt)
  end
end
