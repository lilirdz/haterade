class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  # has_many :likes
  extend FriendlyId
  friendly_id :title, use: :slugged

end
