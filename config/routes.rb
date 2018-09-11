Rails.application.routes.draw do
  devise_for :users
  # match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  # match 'users/:id' => 'users#show', as: :user
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
