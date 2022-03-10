Rails.application.routes.draw do
get "/params_game" => "params#query_params_method"
get "/name", controller: "games", action: "name_game"
get "/number_game" => "games#number_game"
end
