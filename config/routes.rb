Rails.application.routes.draw do
  get '/callback' => 'products#callback'
end
