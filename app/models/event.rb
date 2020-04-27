class Event < ApplicationRecord
  validates :name, 
            :start_date,
            :end_date,
            presence: true
            
  belongs_to :sponsor
end
