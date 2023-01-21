class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    def loggedin?
        !!current_user
    end
    def require_user
        if !loggedin? 
            flash[:notice] = "Please log-in"
            redirect_to user_sign_up_path
        end
    end
end
