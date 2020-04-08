class TasksController < ApplicationController
  def index
    @tasks = Task.page(params[:page]).per(1).order(id: "DESC")
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
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end
  
  
  private
  def task_params
    params.require(:task).permit(:name,:content,:time,:week,:station,:address,:user_id)
  end
  
end
