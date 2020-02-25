Rails.application.routes.draw do
  root 'users#home'
  resources :blood_sugars
  resources :glycemic_indices
  resources :medications
  resources :answers
  resources :questions
  resources :users
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
