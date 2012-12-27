ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}") if !["schema_migrations"].include?(table)
end

puts "Seeding AdminMsUser..."
AdminMsUser.create(:login_name =>'0331960121', :id_group =>'00', :user_name =>'AIRMANSENA', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2008-01-01', :tglpasswordexpired =>'2900-01-01', :tgllastlogin =>'2008-01-04', :pin =>'111111', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)
AdminMsUser.create(:login_name =>'herman', :id_group =>'00', :user_name =>'herman', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>1, :tglcreate =>'2012-09-24', :tglpasswordexpired =>'2012-09-24', :tgllastlogin =>'2012-09-24', :pin =>'1', :created_at =>'2012-09-24', :updated_at =>'2012-09-24', :status =>1)
AdminMsUser.create(:login_name =>'masterroot', :id_group =>'00', :user_name =>'MASTER ROOT', :password =>'1111', :password_confirmation =>'1111', :limitlogin =>99, :tglcreate =>'2007-06-04', :tglpasswordexpired =>'2900-06-04', :tgllastlogin =>'2008-01-30', :pin =>'333333', :created_at =>'1899-12-30', :updated_at =>'1899-12-30', :status =>0)

puts "Seeding ACompanyProfile..."
1.upto(10) do |number|
  ACompanyProfile.create({
    kode: number,
    nama_company: "Company #{number}",
    contact_person: "Contact Person #{number}",
    alamat_title: "Alamat Title #{number}",
    alamat_01: "Alamat 01 #{number}",
    alamat_02: "Alamat 02 #{number}",
    alamat_03: "Alamat 03 #{number}",
    telepon: "08229123#{number}",
    fax: "08229124#{number}",
    email: "email_#{number}@test.com",
    homepage: "www.homepage#{number}.com"
  })
end

puts "Seeding ASatuan..."
admin = AdminMsUser.first
1.upto(10) do |number|
  ASatuan.create({
    simbol: "sim_#{number}",
    nama: "Nama #{number}",
    no_urut: number,
    updated_by: admin.user_name
  })
end

puts "Seeding ABadanUsaha..."
1.upto(10) do |number|
  ABadanUsaha.create({
    kode: number,
    nama: "Nama #{number}",
    no_urut: number,
    updated_by: admin.user_name
  })
end
