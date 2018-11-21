Rails.application.routes.draw do
  resources :project_tasks
  resources :user_tasks
  resources :user_projects
  resources :tasks
  resources :projects
  resources :users
  # post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
