Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "events#new"
  # Routes for the Vote resource:
  # CREATE
  get "/votes/new", :controller => "votes", :action => "new"
  post "/create_vote", :controller => "votes", :action => "create"

  # READ
  get "/votes", :controller => "votes", :action => "index"
  get "/votes/:id", :controller => "votes", :action => "show"

  # UPDATE
  get "/votes/:id/edit", :controller => "votes", :action => "edit"
  post "/update_vote/:id", :controller => "votes", :action => "update"

  # DELETE
  get "/delete_vote/:id", :controller => "votes", :action => "destroy"
  post "/delete_vote/:id", :controller => "votes", :action => "destroy"
  #------------------------------

  # Routes for the Choice resource:
  # CREATE
  get "/choices/new", :controller => "choices", :action => "new"
  post "/create_choice", :controller => "choices", :action => "create"

  # READ
  get "/choices", :controller => "choices", :action => "index"
  get "/choices/:id", :controller => "choices", :action => "show"

  # UPDATE
  get "/choices/:id/edit", :controller => "choices", :action => "edit"
  post "/update_choice/:id", :controller => "choices", :action => "update"

  # DELETE
  get "/delete_choice/:id", :controller => "choices", :action => "destroy"
  #------------------------------

  # Routes for the Guest resource:
  # CREATE
  get "/guests/new", :controller => "guests", :action => "new"
  post "/create_guest", :controller => "guests", :action => "create"

  # READ
  get "/guests", :controller => "guests", :action => "index"
  get "/guests/:id", :controller => "guests", :action => "show"

  # UPDATE
  get "/guests/:id/edit", :controller => "guests", :action => "edit"
  post "/update_guest/:id", :controller => "guests", :action => "update"

  # DELETE
  get "/delete_guest/:id", :controller => "guests", :action => "destroy"
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
  get "/my_invites", :controller => "users", action: "my_invites"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
