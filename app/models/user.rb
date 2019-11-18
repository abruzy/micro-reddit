class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 15 }
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false }

  has_many :posts
  has_many :comments
end
