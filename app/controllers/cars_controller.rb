class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def new
        @car = Car.new
    end

    def create
        car = Car.new(car_params)
        if car.save
            redirect_to car_path car
        else
            render :new
        end
    end

    def edit
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.update(car_params)

        if @car.save
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
end
