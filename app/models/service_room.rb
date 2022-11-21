class ServiceRoom < ApplicationRecord
  belongs_to :service
  belongs_to :room
end
