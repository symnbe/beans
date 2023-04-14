class Store < ApplicationRecord

  has_many :beans, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


end
