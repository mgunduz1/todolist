class TodoListReflex < ApplicationReflex

    def delete_that_list
      todo_list = TodoList.find(element.dataset.id)
      todo_list.destroy
    end
  
end