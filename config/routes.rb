Rails.application.routes.draw do
  
  #Get the login token from Knock
  post 'user_token' => 'user_token#create'

  #User routes
  get '/users/current' => 'users#current'

  resources :destinations, :users, :planners, :category, :attractions, :events

  post '/planners/:planner_id/add_attraction/:attraction_id' => 'planners#add_attraction'


end
