class Room < ApplicationRecord
  has_many_attached :photos

  enum :status, Available: 0, Maintance: 1
end
