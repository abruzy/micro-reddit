# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :comment, presence: true, length: { minimum: 3, maximum: 20 }
  validates :user_id, presence: true
  validates :post_id, presence: true
end
