class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            redirect_to root_path
        else
            render :new, notice : error al crear un usuario
        end
    end
    
    private 
    def user_params
        params.requiere(:user). permit(:email, password, :name)
    end

end
