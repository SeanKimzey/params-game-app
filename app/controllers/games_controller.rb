class GamesController < ApplicationController
  def params_1
    the_name = params["name"].upcase
    render json: {name:  the_name}
  end

  def guess_game
    answer = 25
    guess = params["guess"].to_i

    if guess == answer
      the_message = "You did it"
    elsif answer > guess
      the_message = "Too low"
    elsif answer < guess
      the_message = "Too high"
    end

    render json: {message: the_message}
          
  end
end
