class UsersController < ApplicationController
      skip_before_action :authenticate_user, {only: [:new,:create]}
  def show
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      redirect_to staff_url(@user)
    else
      render 'edit'
    end
  end
  
  
  def create
    @user = User.new(user_params)
  if @user.save
    redirect_to login_path
  else
    render 'new'
  end
  end
  
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:kind,:organization_name,:user_address,:born,:user_message,:icon)
  end
end
