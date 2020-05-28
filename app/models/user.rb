class User < ApplicationRecord
  has_many :posts
  has_many :categories, through: :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  has_many :dislikes, through: :posts
  has_secure_password

  validates :name, presence: true
  validates :username, presence: true

  
  extend FriendlyId
  friendly_id :username, use: :slugged

  # def total_likes 
  #   sum = 0

  #   self.posts.each do |post|
  #     if post.likes
  #       sum += post.likes
  #     else
  #       post.likes = 0
  #     end
  #   end    
  #   sum
  # end
end
