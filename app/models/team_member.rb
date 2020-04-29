class TeamMember < ApplicationRecord
  validates :team,
            :member,
            presence: true

  belongs_to :team
  belongs_to :member
end
