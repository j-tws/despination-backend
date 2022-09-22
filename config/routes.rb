Rails.application.routes.draw do
  
  #Get the login token from Knock
  post 'user_token' => 'user_token#create'

  #User routes
  get '/users/current' => 'users#current'
  get '/destinations/locations' => 'destinations#get_locations'

  post '/new_planner' => 'planners#create'
  
  resources :destinations, :users, :planners, :category, :attractions, :events
  delete '/planners/:id' => 'planners#destroy'
  
  post '/planners/:planner_id/add_attraction/:attraction_id' => 'planners#add_attraction'

  delete '/planners/:planner_id/remove_attraction/:attraction_id' => 'planners#remove_attraction'

  post '/planners/:planner_id/add_event/:event_id' => 'planners#add_event'

  delete '/planners/:planner_id/remove_event/:event_id' => 'planners#remove_event'

  post '/attractions/:attraction_id/likes' => 'attractions#add_likes'

end
