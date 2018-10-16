Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'landing#index'
  get 'landing/index'

  # Preferences Routes
  get '/preferences/show' => 'preferences#show'
  get '/preferences/new' => 'preferences#new'
  post '/preferences/new' => 'preferences#create'
  get '/preferences/edit' => 'preferences#edit'
  patch '/preferences/edit' => 'preferences#update'

  # Listing Routes
  get '/listing/show' => 'listing#show'
  get '/listing/new' => 'listing#new'
  post '/listing/new' => 'listing#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
