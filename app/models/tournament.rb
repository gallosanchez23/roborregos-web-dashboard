class Tournament < ApplicationRecord
  validates :name,
            :city,
            :type,
            :country,
            :end_date,
            :start_date,
            presence: true

  has_many :tournament_categories
  has_many :categories, through: :tournament_categories

  enum type: {
    regional: 0,
    national: 1,
    international: 2,
  }
end
