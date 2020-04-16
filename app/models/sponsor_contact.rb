class SponsorContact < ApplicationRecord
  validates :first_name,
            :fathers_last_name,
            :email,
            :sponsor,
            presence: true

  belongs_to :sponsor
end
