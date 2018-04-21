Rails.application.routes.draw do


  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'cities/index'

  get 'cities/new'

  get 'cities/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to:'users#index'
resources :users
resources :cities
resources :posts

get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post "/sessions", to: "sessions#create"

end


# Prefix Verb   URI Pattern                Controller#Action
# posts_index GET    /posts/index(.:format)     posts#index
# posts_show GET    /posts/show(.:format)      posts#show
# posts_new GET    /posts/new(.:format)       posts#new
# posts_edit GET    /posts/edit(.:format)      posts#edit
# cities_index GET    /cities/index(.:format)    cities#index
# cities_new GET    /cities/new(.:format)      cities#new
# cities_show GET    /cities/show(.:format)     cities#show
#     root GET    /                          users#index
#    users GET    /users(.:format)           users#index
#          POST   /users(.:format)           users#create
# new_user GET    /users/new(.:format)       users#new
# edit_user GET    /users/:id/edit(.:format)  users#edit
#     user GET    /users/:id(.:format)       users#show
#          PATCH  /users/:id(.:format)       users#update
#          PUT    /users/:id(.:format)       users#update
#          DELETE /users/:id(.:format)       users#destroy
#   cities GET    /cities(.:format)          cities#index
#          POST   /cities(.:format)          cities#create
# new_city GET    /cities/new(.:format)      cities#new
# edit_city GET    /cities/:id/edit(.:format) cities#edit
#     city GET    /cities/:id(.:format)      cities#show
#          PATCH  /cities/:id(.:format)      cities#update
#          PUT    /cities/:id(.:format)      cities#update
#          DELETE /cities/:id(.:format)      cities#destroy
#    posts GET    /posts(.:format)           posts#index
#          POST   /posts(.:format)           posts#create
# new_post GET    /posts/new(.:format)       posts#new
# edit_post GET    /posts/:id/edit(.:format)  posts#edit
#     post GET    /posts/:id(.:format)       posts#show
#          PATCH  /posts/:id(.:format)       posts#update
#          PUT    /posts/:id(.:format)       posts#update
#          DELETE /posts/:id(.:format)       posts#destroy
#    login GET    /login(.:format)           sessions#new
#   logout GET    /logout(.:format)          sessions#destroy
# sessions POST   /sessions(.:format)        sessions#create
