class AdminMsUrlBack < ActiveRecord::Base
  attr_accessible :kode, :url_back
  validates :kode, :url_back, presence: true
end
