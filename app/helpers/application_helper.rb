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

  def showing_row(model, column_name, attributes, object, instance)
    result = ""
    result += "<tr>"
    result += "<th align='left'>&nbsp; #{model.human_attribute_name(column_name).titleize}</th>"
    result += "<th align='center'>:</th>"
    result += "<th align='left'>"
    result += column_name == "updated_at" ? "#{text_field_tag column_name, instance.updated_at.strftime("%a %b %d, %H:%M %p"), @read_only_attributes}" : "#{object.text_field column_name, column_name == 'updated_by' ? @read_only_attributes : attributes}"
    result += "</th>"
    result += "</tr>"
  end
end