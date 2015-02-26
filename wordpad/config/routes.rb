Rails.application.routes.draw do
  resources :blogs

  resources :languages

  devise_for :users
  get '/users' => 'home#index'
  get '/blog_posts' => 'dashboard#blog_post', :as => 'blog_posts'
  get '/dashboard/myblogs' => 'dashboard#myblogs'
  post '/dashboard/post' => 'dashboard#post', :as => 'post'
  get '/dashboard/index' => 'dashboard#index'
  get '/dashboard/show_users' => 'dashboard#show_users', :as => 'user_list'
  get '/dashboard/blog_create' => 'dashboard#blog_create'
  get '/:dashboard/:index' => 'dashboard#index'
  get '/:dashboard:' => 'dashboard#index'
  get '/:users/:index' => 'dashboard#index'
  get '/:users' => 'dashboard#index'
  root to: 'home#index'
  get '/' => 'home#index', :as => 'home'

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
