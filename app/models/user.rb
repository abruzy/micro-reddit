class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 15 }
end
