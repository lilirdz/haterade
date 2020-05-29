class Category < ApplicationRecord
  has_many :posts
  has_many :users, through: :posts
  extend FriendlyId
  friendly_id :name, use: :slugged

  def self.category_most_posts
    self.all.sort {|a,b| b.posts.count <=> a.posts.count}.first
  end
end
