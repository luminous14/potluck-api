class User < ApplicationRecord
  has_many :items

  validates :email, uniqueness: true

  before_create :generate_api_key

  def generate_api_key
    self.api_key = SecureRandom.hex(16)
  end
end
