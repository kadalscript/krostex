module ApplicationHelper
  def message(alert, notice)
    !alert.blank? ? "alert" : ""
    !notice.blank? ? "alert-success" : ""
  end

  def hidden_value(path)
    raw("<input type='hidden' id='url_back' value=\"#{path}\" />")
  end
end