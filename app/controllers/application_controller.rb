class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :current_staff
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def current_staff
        @current_staff ||= Staff.find_by(id: staffsession[:staff_id]) if staffsession[:staff_id]
    end
    
end
