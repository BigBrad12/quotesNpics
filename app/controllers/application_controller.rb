class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    def logged_in?
        !!current_user
    end
    def require_user
        if !loggedin? 
            flash[:notice] = "Please log-in"
            redirect_to user_sign_up_path
        end
    end
end
