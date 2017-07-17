class CreateTaskDependencies < ActiveRecord::Migration[5.0]
  def change
    create_table :task_dependencies do |t|
      t.integer :sup_task_id
      t.integer :sub_task_id

      t.timestamps
    end
    add_index :task_dependencies, :sup_task_id
    add_index :task_dependencies, :sub_task_id
  end
end
