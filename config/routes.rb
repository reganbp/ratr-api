# frozen_string_literal: true

Rails.application.routes.draw do
  resources :brews
  resources :breweries
  resources :ratings
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]
  resources :ratings, except: %i[new edit]
  resources :breweries, except: %i[new edit]
  resources :brews, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  # post '/ratings' => 'ratings#create'
end
