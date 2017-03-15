class Post < ActiveRecord::Base
  belongs_to :blog, dependent: :destroy
  belongs_to :user
  has_many :messages
  has_many :comments, as: :commentable
  validates :title, :content, presence: true
  validates :title, length: {minimum:7}
end
