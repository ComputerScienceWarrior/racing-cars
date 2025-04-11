class CarsController < ApplicationController
    def index

    end

    def show
        @car = Car.find(params[:id])
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

    def car_params
        params.require(:car).permit(:name, :nickname, :tournament_match_wins, :tournament_match_losses, :championship_wins,
                                    :championship_losses, :wins, :losses, :draws, :rank, :img_url)
    end
end
