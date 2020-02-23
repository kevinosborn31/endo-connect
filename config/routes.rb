Rails.application.routes.draw do
  resources :blood_sugars
  resources :glycemic_indices
  resources :medications
  resources :answers
  resources :questions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
