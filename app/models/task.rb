class Task < ApplicationRecord
  has_many :task_dependencies
  # has_many :tasks, through: :task_dependencies

  has_many :sup_task_dependencies, foreign_key: :sub_task_id, class_name: "TaskDependency"
  has_many :sup_tasks, through: :sup_task_dependencies, source: :sup_task

  has_many :sub_task_dependencies, foreign_key: :sup_task_id, class_name: "TaskDependency"
  has_many :sub_tasks, through: :sub_task_dependencies, source: :sub_task

  # def sup_tasks
  #   TaskDependency.find_by('subtask_id' => task.id)
  # end
  #
  # def sub_tasks
  #   task_dependencies
  # end
end
