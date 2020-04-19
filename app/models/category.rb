class Category < ApplicationRecord
  validates :name,
            presence: true

  has_many :teams
  has_many :achievements
  has_many :tournament_categories
  has_many :tournaments, through: :tournament_categories
end
