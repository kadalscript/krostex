module ApplicationHelper
  def message(alert, notice)
    !alert.blank? ? "alert" : ""
    !notice.blank? ? "alert-success" : ""
  end

  def hidden_value(path)
    raw("<input type='hidden' id='url_back' value=\"#{path}\" />")
  end

  def form_title(type, title)
    result = ""
    types = { "destroy_show" => DELETE, "edit" => EDIT, "show" => "", "new" => "REGISTRASI" }
    result += "FORM #{types[type].upcase}" if ["destroy_show", "edit", "new", "show"].include?(type)
    result += " DATA #{title.upcase}"
  end
end