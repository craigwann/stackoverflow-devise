Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  # root :to => 'questions#index'
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  #
  # get '/signin' => 'sessions#new'
  # post '/signin' => 'sessions#create'
  # get '/signout' => 'sessions#destroy'

 resources :questions do
   resources :answers
 end

end
