class Event < ApplicationRecord
  validates :name,
            :end_date,
            :start_date,
            presence: true

  belongs_to :sponsor
end
