class Api::V1::GamesController < ApplicationController

    def index
        games = Game.all 

        render json: games, status: 200
    end

    def create
        user = User.find_by(nickname: game_params[:nickname])
        game = Game.create(score: game_params[:score], user: user)

        render json: game, status: 200
    end

    private

    def game_params
        params.require(:game).permit(:score, :nickname)
    end
end
