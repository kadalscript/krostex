class AdminMsUrlBack < ActiveRecord::Base
  attr_accessible :kode, :url_back, :created_at, :updated_at
  validates :kode, :url_back, presence: true
end
