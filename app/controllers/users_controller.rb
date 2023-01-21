class UsersController < ApplicationController 

    before_action :set_user, only: %i[ show destroy ]
    def show
    end

    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Created Account"
            redirect_to root_path
        end
    end
    def destroy
        @user.destroy
        session[:user_id] = nil if current_user == @user
        flash[:notice] = "User and account deleted"
        redirect_to root_path
    end

    private 
    def set_user
        @user = User.find(params[:id])
    end
    def user_params
        params.require(:user).permit(:name, :password)
    end

end