Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #define root of url
  root 'dustbins#new'

  get '/show' => 'dustbins#show'
end
