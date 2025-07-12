class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)

        if user.save
            redirect_to user_path user
        else
            render :new
        end
    end

    def edit
    end

    def update
        @user = User.update(user_params)

        if @user.save
            redirect_to users_path @user
        else
            render :edit
        end
    end

    def destroy
        # adds logic to delete a user account
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :email, :first_name)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
