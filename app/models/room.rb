class Room < ApplicationRecord
  has_many_attached :photos
  has_many :service_rooms, dependent: :destroy
  has_many :services, through: :service_rooms

  enum :status, Müsait: 0, Bakımda: 1

  validates :capacity, :number, numericality: true
  validates :price, presence: true, numericality: {:greater_than => 0}   
  validates :number, uniqueness: true
  validate :image_type

  def photo_as_thumbnail(photo)
    photo.variant(resize_to_limit: [60, 30]).processed
  end

  private
  def image_type
    if photos.attached? == false
      errors.add(:photos, "Fotoğraf Eklemelisiniz!")
    end
    photos.each do |photo|
      if !photo.content_type.in?(%('image/jpeg image/png'))
        errors.add(:photos, "Seçtiğiniz dosya türü JPEG veya PNG olmalıdır.")
      end
    end
  end
  
end
