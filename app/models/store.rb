class Store < ApplicationRecord

  has_many :beans, dependent: :destroy

  # map 機能　住所から緯度と軽度を取得

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


end
