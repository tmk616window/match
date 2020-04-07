class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(email: session_params[:email])
    
    if @user&.authenticate(session_params[:password])
     session[:user_id] = @user.id
      flash[:success]= 'ログインしました' 
     redirect_to tasks_path
    else
      flash[:danger] = 'メールアドレスかパスワードが間違っています' 
      
      render :new
    end
  end
  
  def destroy
    reset_session
    redirect_to login_form_path ,notice: 'ログインしました'
  end
  
  private
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end
