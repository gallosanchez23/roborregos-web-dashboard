class Arrangement < ApplicationRecord
  validates :amount,
            :sponsor,
            :end_date,
            :start_date,
            :sponsorship_type,
            presence: true

  belongs_to :sponsor

  has_many :arrangement_members
  has_many :members, through: :arrangement_members

  enum sponsorship_type: {
    in_kind: 0,
    cash: 1,
  }
end
