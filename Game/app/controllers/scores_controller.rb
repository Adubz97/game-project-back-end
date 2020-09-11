class ScoresController < ApplicationController

    def index
        scores = Score.all
        render json: scores
    end
    def create
        score = Score.create(scores_params)
        byebug
        render json: score
    end

private
    def scores_params
        params.require(:score).permit(:user_id,:number)
    end
end
