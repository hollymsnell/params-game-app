class ParamsController < ApplicationController

  def query_params_method
    input_name = params["name"]
    render json: {message: "#{input_name} is the coolest!", message2: "Your number is #{params['x']}"}
  end

  def guess_a_number
    user_number_choice = params["variable"].to_i
    winning_number = 36
    if user_number_choice < winning_number
      render json: {message: "You guessed too low, guess higher!"}
    elsif user_number_choice > winning_number
      render json: {message: "You guesed too high, guess lower!"}
    else
      render json: {message: "You guessed it! You win!"}
    end
  end
end
