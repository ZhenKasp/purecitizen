class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image

  #validates :title, presence: true, length: { in: 2..25 } ,uniqueness: true
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
