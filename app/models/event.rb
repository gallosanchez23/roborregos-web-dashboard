class Event < ApplicationRecord
  validates :name, 
            :start_date,
            :end_date,
            :description,
            :sponsor,
            presence: true
            
  belongs_to :sponsor
end
