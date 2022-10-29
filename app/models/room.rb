class Room < ApplicationRecord
  has_many_attached :photos

  enum :status, Available: 0, Maintance: 1

  validates :capacity, :number, numericality: true
  validates :price, presence: true, numericality: {:greater_than => 0}   
  validates :number, uniqueness: true

  def photo_as_thumbnail(photo)
    return unless photo.content_type.in?(%w[image/jpeg image/png])
    photo.variant(resize_to_limit: [60, 30]).processed
  end
end
