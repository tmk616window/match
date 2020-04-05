class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(id: "DESC")
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end
  
  
  
  def task_params
    params.require(:task).permit(:name,:content)
  end
  
end
