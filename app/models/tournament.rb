class Tournament < ApplicationRecord
  validates :name,
            :city,
            :type,
            :country,
            :end_date,
            :start_date,
            presence: true

  enum type: {
    regional: 0,
    national: 1,
    international: 2,
  }
end
