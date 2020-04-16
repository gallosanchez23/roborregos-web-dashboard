class Sponsor < ApplicationRecord
  validates :name,
            :avatar,
            presence: true

  has_one :contact, class_name: 'SponsorContact', dependent: :destroy
end
