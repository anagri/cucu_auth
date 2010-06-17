ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :user_sessions, :only => [:create, :new, :destroy]
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.root :controller => 'users', :action => 'index'
end
