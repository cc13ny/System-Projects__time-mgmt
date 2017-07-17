class TaskDependency < ApplicationRecord
  belongs_to :sup_task, foreign_key: "sup_task_id", class_name: "Task"
  belongs_to :sub_task, foreign_key: "sub_task_id", class_name: "Task"
end
