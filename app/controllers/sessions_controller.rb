class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(email: session_params[:email],kind: session_params[:kind])
    
    if @user&.authenticate(session_params[:password])
     session[:user_id] = @user.id
      flash[:success]= 'ログインしました' 
     redirect_to root_path
    else
      flash[:danger] = 'メールアドレスかパスワードが間違っています' 
      
      render :new
    end
  end
  
  def destroy
    reset_session
      flash[:danger] = 'ログアウトしました' 
    redirect_to login_path 
  end
  
  private
  
  def session_params
    params.require(:session).permit(:email, :password,:kind)
  end
  
end
