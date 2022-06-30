class TodoItem < ApplicationRecord
  belongs_to :todo_list
  validates :description, presence: true
  scope :completed, -> do
    where(completed: true)
  end
end
