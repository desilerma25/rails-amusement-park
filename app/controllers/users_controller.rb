class UsersController < ApplicationController
    # before_action :redirect_if_not_logged_in?, only: [:show]

    def new
        
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def show
        redirect_if_not_logged_in
    end

    private
    def user_params
        params.require(:user).permit(:name, :height, :tickets, :nausea, :admin, :happiness, :password)
    end
    
end
