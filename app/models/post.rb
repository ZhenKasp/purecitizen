class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  #validates :title, presence: true, length: { in: 2..25 } ,uniqueness: true
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def as_json(options = nil)
    {
      title: title,
      body: body,
      longitude: longitude,
      latitude: latitude,
      image: ActionController::Base.asset_host + image.url
    }
  end
end
