module ACompanyProfilesHelper
  def showing_alamat(object)
    result = ""
    !object.alamat_title.blank? ? (result += "#{object.alamat_title}" + "<br />") : ""
    !object.alamat_01.blank? ? (result += "#{object.alamat_01}" + "<br />") : ""
    !object.alamat_02.blank? ? (result += "#{object.alamat_02}" + "<br />") : ""
    !object.alamat_03.blank? ? (result += "#{object.alamat_03}") : ""
    raw(result)
  end

  def company_profile_column(column)
    case column
    when 'nama_company'
      "nama perusahaan"
    when 'contact_person'
      "nama kontak"
    when 'alamat_title'
      "alamat"
    else
      column
    end
  end
end
