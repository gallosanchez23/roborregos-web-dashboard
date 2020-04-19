class TournamentCategory < ApplicationRecord
  validates :category,
            :tournament,
            presence: true

  belongs_to :category
  belongs_to :tournament
end
