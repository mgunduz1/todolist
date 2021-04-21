class TodoListReflex < ApplicationReflex

    def delete_that_list
      todo_list = TodoList.find(element.dataset.id)
      items = TodoItem.where(todo_list_id: todo_list)
      items.destroy_all && todo_list.destroy
    end
  
end