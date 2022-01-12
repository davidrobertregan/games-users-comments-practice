class GamesController < ApplicationController 

    def index
        render json: Game.all
    end

    def show 
        game = Game.find_by(id: params[:id])
        if game 
            render json: game
        else
            render json: {error: "Game not found"}, status: :not_found
        end
    end
end