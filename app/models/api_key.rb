class ApiKey < ApplicationRecord
  before_create :generate_access_token
  before_create :generate_session_token

  validates :service_app,
            presence: true

  belongs_to :service_app

  private

  def generate_access_token
    begin
      self.access_token = SecureRandom.uuid
    end while self.class.exists?(access_token: access_token)
  end

  def generate_session_token
    begin
      self.session_token = SecureRandom.uuid
    end while self.class.exists?(session_token: session_token)
  end
end
