class GamesController < ApplicationController

  def name_game

    user_given_name = params["my_name"].upcase

    if user_given_name.starts_with?("A")
      output_message = "Hey! Your name starts with A."
    else
      output_message = "Cool beans."
    end

    render json: {message: "Your name is #{user_given_name}. #{output_message}"}
  end

  def number_game
    user_number_choice = params["user_number"].to_i
    winning_number = 36
    if user_number_choice < winning_number
      output_message = "You guessed too low, guess higher!"
    elsif user_number_choice > winning_number
      output_message = "You guesed too high, guess lower!"
    else
      output_message = "You guessed it! You win!"
    end
    render json: {message_to_user: output_message}
  end
end
