class TournamentsController < ApplicationController
    def index
        @tournaments = Tournament.all
    end

    def show
        @tournament = Tournament.find(params[:id])
    end

    def new
        @tournament = Tournament.new
    end

    def create
        tournament = Tournament.new(tournament_params)

        if tournament
            redirect_to tournament_path tournament
        else
            render :new
        end
    end

    def edit
        @tournament = Tournament.find(params[:tournament_id])
    end

    def update
        tournament = Tournament.update(tournament_params)
        if tournament.save
            redirect_to tournament_path tournament
        else
            render :edit
        end
    end

    def destroy
        # logic to destroy a tournament
    end

    private



    def tournament_params
        params.require(:tournament).permit(:name, :size, :tournament_type, :season)
    end
end
