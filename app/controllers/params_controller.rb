class ParamsController < ApplicationController

  def query_params_method
    input_name = params["name"]
    render json: {message: "#{input_name} is the coolest!", message2: "Your number is #{params['x']}"}
  end
end
