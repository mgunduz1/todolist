class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.text :task
      t.boolean :completed
      t.datetime :completed_at
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
