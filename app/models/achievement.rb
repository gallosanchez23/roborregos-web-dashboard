class Achievement < ApplicationRecord
  validates :name,
            :team,
            :category,
            presence: true

  belongs_to :team
  belongs_to :category
end
