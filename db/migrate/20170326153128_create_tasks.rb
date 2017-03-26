class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :assignee_id
      t.datetime :due_date
      t.integer :state

      t.timestamps
    end
  end
end
