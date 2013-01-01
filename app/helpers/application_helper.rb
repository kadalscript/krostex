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
    if column_name == 'id_satuan'
      result += select("a_kemasan", "id_satuan", ASatuan.all.collect { |satuan| [ satuan.nama, satuan.id ] }, { include_blank: "- Satuan -" }, @select_box_attr)
    elsif column_name == "id_negara"
      result += select("a_provinsi", "id_negara", ANegara.all.collect { |negara| [ negara.nama, negara.id ] }, { include_blank: "- Negara -" }, @select_box_attr)
    else
      result += column_name == "updated_at" ? "#{text_field_tag column_name, formatting_updated_at(instance.updated_at), @read_only_attributes}" : "#{object.text_field column_name, column_name == 'updated_by' ? @read_only_attributes : attributes}"
    end
    result += "</th>"
    result += "</tr>"
  end

  def formatting_updated_at(date)
    date.strftime("%a %b %d, %H:%M %p")
  end
end