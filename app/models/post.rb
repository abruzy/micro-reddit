class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true
  validates :description, presence: true

  belongs_to :user
end
