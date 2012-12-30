class ApplicationController < ActionController::Base
  protect_from_forgery

  def remoteIP
    return request.remote_ip
  end 

    def sqlExecute(prm_sql_txt)
    # puts "#{'prm_sql_txt = '}#{prm_sql_txt}"
    ActiveRecord::Base.connection.execute(prm_sql_txt) 
  end  

  def fillData(prm_str, prm_token, prm_side, prm_count)
    @strtmp = prm_str ;
   
    panjangVar = (prm_str.to_s()).length; 
      
    i = 0 
    z = prm_count-panjangVar
    while i<z do
      if prm_side=='L'
        @strtmp = "#{prm_token}#{@strtmp}"
      else
        @strtmp = "#{@strtmp}#{prm_token}"
      end  
      i +=1
    end
    return @strtmp 
  end 
  

protected
  def attributes
    @attributes = { style: "width: 300px;" }
    @attributes.merge!({ class: 'required' }) if ['new', 'edit', 'create', 'update'].include?(action_name)
    @attributes.merge!({ readonly: 'true', disabled: 'disabled' }) if ['show', 'destroy_show'].include?(action_name)
  end

  def form_title(type, title)
    result = ""
    types = { "destroy_show" => DELETE, "edit" => EDIT, "show" => "", "new" => "REGISTRASI" }
    result += "FORM #{types[type].upcase}" if ["destroy_show", "edit", "new", "show"].include?(type)
    result += " DATA #{title.upcase}"
  end

  def common_form(table_name, title, object)
    @form_title = form_title(action_name, title)
    respond_to do |format|
      format.html { render file: "#{Rails.root}/app/views/#{table_name}/_form" }
      format.json { render json: object }
    end
  end
end
