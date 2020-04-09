class User < ApplicationRecord
  before_save :generate_token
  #tokenizable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def generate_token
    self.token ||= SecureRandom.urlsafe_base64
  end
end
