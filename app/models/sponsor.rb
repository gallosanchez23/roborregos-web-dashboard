class Sponsor < ApplicationRecord
  validates :name,
            :avatar,
            presence: true

  has_many :events
  has_many :contacts, class_name: 'SponsorContact', dependent: :destroy
  has_many :arrangements, dependent: :destroy
end
