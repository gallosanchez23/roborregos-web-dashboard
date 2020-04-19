class Category < ApplicationRecord
  validates :name,
            presence: true

  has_many :teams
  has_many :achievements
end
