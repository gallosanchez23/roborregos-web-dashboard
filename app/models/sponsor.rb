class Sponsor < ApplicationRecord
  validates :name
            :avatar
            presence: true
end
