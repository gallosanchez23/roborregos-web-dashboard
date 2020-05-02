class EventMember < ApplicationRecord
  validates :event,
            :member,
            presence: true

  belongs_to :event
  belongs_to :member
end
