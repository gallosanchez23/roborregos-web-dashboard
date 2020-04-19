class ArrangementMember < ApplicationRecord
  validates :member,
            :arrangement,
            presence: true

  belongs_to :member
  belongs_to :arrangement
end
