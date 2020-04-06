class StaffsController < ApplicationController
  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
  end

  def edit
    @staff = Staff.find(params[:id])
  end
  
  def create
    @staff = Staff.new(staff_params)
    @staff.save
  end
  
  private
  
  def staff_params
    params.require(:staff).permit(:name,:email,:password,:password_confirmation)
  end
end
