class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true
  validates :description, presence: true
  has_many :comments
  belongs_to :user
end
