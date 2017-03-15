class Result < ActiveRecord::Base
  validates :name, :comment, presence: true
end
