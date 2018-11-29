Rails.application.routes.draw do
  resources :project_tasks
  resources :user_tasks
  resources :user_projects
  resources :tasks
  resources :projects
  resources :users
  post '/auth', to: 'auth#create'
  # get '/current_user', to: 'auth#show'
  get "/persist", to: "auth#persist"
end
