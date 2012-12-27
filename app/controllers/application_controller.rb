class ApplicationController < ActionController::Base
  protect_from_forgery

protected
  def attribute
    @attribute = { style: "width: 300px;" }
    @attribute.merge!({ class: 'required' }) if ['new', 'edit'].include?(action_name)
    @attribute.merge!({ readonly: 'true' }) if ['show', 'destroy_show'].include?(action_name)
  end
end
