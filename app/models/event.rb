class Event < ApplicationRecord
  validates :name,
            :end_date,
            :start_date,
            presence: true

  belongs_to :sponsor

  has_many :event_members
  has_many :members, through: :event_members

  def sponsor_name
    Sponsor.find(self.sponsor_id).name
  end

end
