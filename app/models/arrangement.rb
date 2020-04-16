class Arrangement < ApplicationRecord
  validates :amount,
            :sponsor,
            :end_date,
            :start_date,
            :sponsorship_type,
            presence: true

  belongs_to :sponsor
end
