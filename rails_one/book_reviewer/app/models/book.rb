class Book < ActiveRecord::Base
  validates :title, :author, presence: true
  belongs_to :author
end
