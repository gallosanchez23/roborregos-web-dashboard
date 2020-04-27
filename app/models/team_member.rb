class TeamMember < ApplicationRecord
  validates :team,
            :member,
            presence: true

  belongs_to :team
  belings_to :member
end
