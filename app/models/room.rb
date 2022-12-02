class Room < ApplicationRecord
  has_one_attached :photos

  enum :status, Available: 0, Maintance: 1
end
