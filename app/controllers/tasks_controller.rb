class TasksController < ApplicationController
  def index
    @tasks = Task.page(params[:page]).per(2).order(id: "DESC")
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
    flash[:success] = '投稿しました。' 
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_url
  end
  
  private
  def task_params
    params.require(:task).permit(:name,:content,:time,:week,:station,:address,:user_id)
  end
  
end
