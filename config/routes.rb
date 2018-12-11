Rails.application.routes.draw do
  get 'csv/index'
  post 'csv/import'
  get 'csv/show'

  resources :employees
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
