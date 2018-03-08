Rails.application.routes.draw do
  get '/url-params' => 'games#params_1'
  get '/guess-number/:guess' => 'games#guess_game'
end
