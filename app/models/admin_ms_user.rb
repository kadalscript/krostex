class AdminMsUser < ActiveRecord::Base
  devise :database_authenticatable, :authentication_keys => [:login_name]

  attr_accessible :login_name, :id_group, :user_name,
  :limitlogin, :tglcreate, :tglpasswordexpired, :tgllastlogin, :pin, :created_at,
  :updated_at, :status, :password, :password_confirmation, :encrypted_password

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login_name = conditions.delete(:login_name)
      where(conditions).where(["lower(login_name) = :value", { :value => login_name.downcase }]).first
    else
      where(conditions).first
    end
  end
end
