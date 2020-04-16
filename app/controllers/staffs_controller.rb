class StaffsController < ApplicationController
    skip_before_action :authenticate_user, {only: [:show]}
    before_action :secure_user, {only: [:edit]}
  def show
    @user = User.find(params[:id])
    @tasks = Task.where(params[:id]).order(id: "DESC")
  end

  def edit
    @user = User.find(params[:id])
  end

  def detail
  
    @task = Task.find(params[:id])
  end

end
