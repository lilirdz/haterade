class User < ApplicationRecord
  has_many :posts
  has_many :categories, through: :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts
  has_many :dislike, through: :posts


  def get_content
    self.posts.each do |post|
      post.content
    end
  end
end
