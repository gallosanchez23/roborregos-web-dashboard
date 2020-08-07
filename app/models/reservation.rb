class Reservation < ApplicationRecord
  validates :member,
            presence: true

  belongs_to :member
  has_many   :reservation_details
end
