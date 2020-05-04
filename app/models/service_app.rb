class ServiceApp < ApplicationRecord
  after_create :assign_api_key

  validates :name,
            :active,
            :access_api,
            presence: true

  has_one :api_key, dependent: :destroy

  private

  def assign_api_key
    ApiKey.create!(service_app_id: self.id)
  end
end
