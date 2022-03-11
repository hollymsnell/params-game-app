Rails.application.routes.draw do
get "/params_game" => "params#query_params_method"
get "/url_segment_params/:variable" => "games#url_segment"
get "/url_guess_a_number/:variable" => "params#guess_a_number"

get "/name", controller: "games", action: "name_game"
get "/number_game" => "games#number_game"

post "/user_and_pass" => "params#user_pass_method"
end

