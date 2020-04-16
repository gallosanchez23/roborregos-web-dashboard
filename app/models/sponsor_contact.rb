class SponsorContact < ApplicationRecord
  validates :email,
            :sponsor,
            :first_name,
            :fathers_last_name,
            presence: true

  belongs_to :sponsor
end
