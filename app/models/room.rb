class Room < ApplicationRecord
  has_many_attached :photos
  has_many :service_rooms
  has_many :services, through: :service_rooms

  enum :status, Müsait: 0, Bakımda: 1

  validates :capacity, :number, numericality: true
  validates :price, presence: true, numericality: {:greater_than => 0}   
  validates :number, uniqueness: true

  def photo_as_thumbnail(photo)
    return unless photo.content_type.in?(%w[image/jpeg image/png])
    photo.variant(resize_to_limit: [60, 30]).processed
  end
end
