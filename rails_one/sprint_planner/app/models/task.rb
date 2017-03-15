class Task < ActiveRecord::Base
  validates :description, :priority, :due_date, :status, presence: true
end
