class Team < ApplicationRecord
  validates :name
            :category,
            presence: true

  belongs_to :category
end
