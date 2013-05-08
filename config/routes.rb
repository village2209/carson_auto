CarsonAuto::Application.routes.draw do
  
  root to: 'static_pages#home'
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :cars
  resources :users
  resources :ship_addresses
  resources :payment_cards
  resources :carts
  resources :cart_items, only: [:create, :destroy]

  resources :sessions, only: [:new, :create, :destroy]

  match '/addcars', to: 'cars#new'
  
  match '/home', to: 'static_pages#home'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/help', to: 'static_pages#help'

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/edit_user', to: 'users#edit'
  match '/signout', to: 'sessions#destroy', via: :delete

  match '/address', to: 'ship_addresses#new'
  match '/ship_address', to: 'ship_addresses#show'
  match '/edit_address', to: 'ship_addresses#edit'
  match '/delete_address', to: 'ship_addresses#destroy'

  match '/new_card', to: 'payment_cards#new'
  match '/credit_card', to: 'payment_cards#show'
  match '/delete_card', to: 'payment_cards#destroy'
  
  match '/add_cart', to: 'carts#create'

  match '/add_cart_item', to: 'cart_items#create'

  match '/show_cart_items', to: 'cart_items#index'

  match '/destroy_cart_item', to: 'cart_items#destroy'
 


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
