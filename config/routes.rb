LoLFantasy::Application.routes.draw do
  resources :player_scores

  resources :team_scores

  resources :games

  resources :pro_teams

  resources :players

  resources :waiver_claims

  resources :free_agents

  resources :matches

  resources :teams

  resources :leagues

  resources :users

  resources :globals

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'globals#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'login' => 'sessions#new'
  post 'sessions' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'register' => 'users#new'

  get 'my_leagues' => 'users#leagues'

  get 'leagues/:id/scoreboard' => 'leagues#scoreboard', as: :scoreboard
  get 'leagues/:id/standings' => 'leagues#standings', as: :standings

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
