class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :likes
  has_many :dislikes

  validates :title, presence: true
  validates :content, length: {minimum:2, maximum:140}
  
  extend FriendlyId
  friendly_id :title, use: :slugged

  def self.most_hated_post
    self.all.sort {|a,b| b.dislikes.count <=> a.dislikes.count}.first
  end

end
