class UsersController < ApplicationController
    def index

    end

    def show
        @user = User.find(params[:id])
    end

    def new

    end

    def create

    end

    def edit

    end

    def update
        
    end

    def destroy

    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :email, :first_name)
    end

end
