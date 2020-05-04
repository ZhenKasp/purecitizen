class User < ApplicationRecord
  before_save :generate_token

  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
  #tokenizable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_associated :posts
  validates_associated :comments


  def generate_token
    self.token ||= SecureRandom.urlsafe_base64
  end
end
