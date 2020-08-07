class Component < ApplicationRecord
  validates :name,
            :component_category,
            :img_path,
            presence: true

  belongs_to :component_category
  has_many   :reservation_details
end
