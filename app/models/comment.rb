class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :title, presence: true, length: { in: 2..25 }
end
