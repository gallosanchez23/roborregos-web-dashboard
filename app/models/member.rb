class Member < ApplicationRecord
  validates :role,
            :email,
            :major,
            :status,
            :generation,
            :first_name,
            :joining_date,
            :fathers_last_name,
            :mothers_last_name,
            presence: true

  has_many :team_members
  has_many :teams, through: :team_members
  has_many :arrangement_members
  has_many :arrangements, through: :arrangement_members

  enum role: {
    software: 0,
    marketing: 1,
    mechanics: 2,
    electronics: 3,
  }

  enum status: {
    active: 0
    neutral: 1,
    conditioned: 2,
    inactive: 3,
    affiliated: 4,
  }

  enum major: {
    ITC: 0,
    ISD: 1,
    IMT: 2,
    BAA: 3,
    ITI: 4,
    IID: 5,
    IM: 6,
    LIN: 7,
    LEC: 8,
    ICT: 9,
    IE: 10,
    IRS: 11,
    BGB: 12,
    INA: 13,
    ITD: 14,
    BCT: 15,
  }
end

