class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def sup_tasks
    @task = Task.find(params[:id])
    @suptasks = @task.sup_tasks
  end

  def sub_tasks
    @task = Task.find(params[:id])
    @subtasks = @task.sub_tasks
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to action: 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :assignee_id, :due_date, :state)
  end
end
