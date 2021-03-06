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
      result += select(controller_name == 'a_cities' ? 'a_city' : 'a_provinsi', "id_negara", ANegara.all.collect { |negara| [ negara.nama, negara.id ] }, { include_blank: "- Negara -" }, @select_box_attr)
    elsif column_name == "id_provinsi"
      result += select("a_city", "id_provinsi", AProvinsi.all.collect { |provinsi| [ provinsi.nama, provinsi.id ] }, { include_blank: "- Provinsi -" }, @select_box_attr)
    elsif column_name == "st_progress"                
      result += select("a_template_cat", "st_progress", [["ACTIVE", "ACTIVE"], ['CLOSED', 'CLOSED']], { include_blank: "- Status -" }, @select_box_attr)
    elsif ((column_name == 'kode') && (controller_name == 'a_template_cats'))
      if action_name == 'new'
        result += text_field_tag 'a_template_cat[kode]', ATemplateCat.last.kode.to_i + 1, @read_only_attributes
      else
        result += object.text_field column_name, @read_only_attributes
      end
    else
      result += column_name == "updated_at" ? "#{text_field_tag column_name, formatting_updated_at(instance.updated_at), @read_only_attributes}" : "#{object.text_field column_name, column_name == 'updated_by' ? @read_only_attributes : attributes}"
    end
    result += "</th>"
    result += "</tr>"
  end

  def formatting_updated_at(date)
    date.strftime("%a %b %d, %H:%M %p")
  end

  def sqlExecute(prm_sql_txt)
    # puts "#{'prm_sql_txt = '}#{prm_sql_txt}"
    ActiveRecord::Base.connection.execute(prm_sql_txt) 
  end  
end