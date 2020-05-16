class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy

  validates_associated :posts
  validates_associated :comments

  before_save :generate_token, on: :create

  private

  def generate_token
    self.token ||= SecureRandom.urlsafe_base64
  end
end
