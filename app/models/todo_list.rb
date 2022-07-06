class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy
  validates :title, presence: true
      #在新增todo list時 使用者在表單是必填


def percent_complete
  return 0 if total_items == 0 
  #因為分母不可以是0
  ( 100* completed_items.to_f / total_items).round(1)
end

def completed_items
  @completed_items ||= todo_items.completed.count
end

  def total_items
    @total_items ||= todo_items.count
  end
end