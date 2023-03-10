class SessionsController < ApplicationController

    def new 

    end
    def create
        user = User.find_by(name: params[:session][:name])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id 
            flash[:notice] = "Logged in"
            redirect_to root_path
        else
            flash[:notice] = "Wrong log-in details"
            render 'new'
        end
    end
    def destroy 
        session[:user_id] = nil
        flash[:notice] = "Logged Out"
        redirect_to root_path
    end
end


