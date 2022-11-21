class Service < ApplicationRecord
  has_many :service_rooms
  has_many :rooms, through: :service_rooms


  validates :name, length: { minimum: 2 }
  validates :description, length: { maximum: 300,
    too_long: "%{count} characters is the maximum allowed" }
end
