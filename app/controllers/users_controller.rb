class UsersController < ApplicationController
    def index

    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.update(user_params)

        if @user.save
            redirect_to
        else
            render :edit
        end
    end

    def destroy
        # adds logic to delete a user account
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :email, :first_name)
    end

end
