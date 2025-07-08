class CarsController < ApplicationController
    before_action :find_user, only: [:new, :create, :show, :index, :edit, :update, :destroy]
    before_action :find_car, only: [:show, :edit, :update, :destroy]

    def index
        @cars = Car.all
    end

    def show
    end

    def new
        @car = Car.new
    end

    def create
        @car = @user.cars.build(car_params)
        if @car.save
            redirect_to car_path @car
        else
            render :new
        end
    end

    
    def edit
    end

    def update
        if @car.update(car_params)
            redirect_to car_path @car
        else
            render :edit
        end
    end

    def destroy
        # logic for deleting a car
    end

    private

    def car_params
        params.require(:car).permit(:name, :nickname, :tournament_match_wins, :tournament_match_losses, :championship_wins,
                                    :championship_losses, :wins, :losses, :draws, :rank, :img_url)
    end

    def find_car
        @car = Car.find(params[:id])
    end

    def find_user
        @user = User.find(params[:user_id])
    end
end
