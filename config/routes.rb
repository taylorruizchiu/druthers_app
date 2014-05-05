Druthers::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'users#new'

  resources :users
  resources :polls
  resources :guests, only: [:new, :create]
 
end

#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         users#new
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     polls GET    /polls(.:format)          polls#index
#           POST   /polls(.:format)          polls#create
#  new_poll GET    /polls/new(.:format)      polls#new
# edit_poll GET    /polls/:id/edit(.:format) polls#edit
#      poll GET    /polls/:id(.:format)      polls#show
#           PATCH  /polls/:id(.:format)      polls#update
#           PUT    /polls/:id(.:format)      polls#update
#           DELETE /polls/:id(.:format)      polls#destroy
#    guests POST   /guests(.:format)         guests#create
# new_guest GET    /guests/new(.:format)     guests#new