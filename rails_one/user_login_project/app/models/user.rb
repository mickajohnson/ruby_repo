class User < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, presence: true, length: { minimum:2 }
  validates :age, presence: true, numericality: true
  validates_numericality_of :age, greater_than_or_equal_to: 10, less_than_or_equal_to: 150
  has_many :messages
end

# numericality: { greater_than_or_equal_to: 10, less_than: 150 }
