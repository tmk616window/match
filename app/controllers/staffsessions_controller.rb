class StaffsessionsController < ApplicationController
  def new
  end
  
  def create
    @staff = Staff.find_by(email: staffsession_params[:email])
    
    if @staff&.authenticate(staffsession_params[:password])
     staffsession[:staff_id] = @staff.id
      flash[:success]= 'ログインしました' 
     redirect_to tasks_url
    else
      flash[:danger] = 'メールアドレスかパスワードが間違っています' 
      
      render :new
    end
  end
  
  
  private
  
  def staffsession_params
    params.require(:staffsession).permit(:email, :password)
  end
  
  
end
