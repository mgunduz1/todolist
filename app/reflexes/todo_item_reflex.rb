# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex

  def delete_that_item
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.destroy
  end

  def complete_positive
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: true, completed_at: Time.now)
  end

  def complete_negative
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: false, completed_at: nil)
  end

end
