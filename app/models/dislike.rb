class Dislike < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def total
    self.all.count
  end
end
