class Review < ActiveRecord::Base
  validates :content, :book, :user, :rating, presence: true
  belongs_to :user
  belongs_to :book
end
