Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/delete'

  get 'users/show', :to => 'users#show'

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'users#show'
  resources :buy_posts, only: [:new, :create]

  get 'buy_posts/sort', to: 'buy_posts#sort'

  get 'buy_posts', to: 'buy_posts#index'

  delete 'buy_posts/delete', to: 'buy_posts#destroy'

  resources :sell_posts, only: [:new, :create]

  get 'sell_posts/sort', to: 'sell_posts#sort'
  get 'sell_posts', to: 'sell_posts#index'
  delete 'sell_posts/delete', to: 'sell_posts#destroy'
  # get 'buy_posts/sort/:id', to: 'buy_posts#sort'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
