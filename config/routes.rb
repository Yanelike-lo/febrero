Rails.application.routes.draw do
  get 'customers/index'
  get 'suppliers/index'
  resources :products

  #resources :products
  get'/products',   :to => 'products#index' 
  get 'products/new' => 'products#new' 
  post 'products/create' => 'products#create' 
  patch  'products/:id' =>'products#update'

  resources :suppliers  do
    resources :account_suppliers
  end
  #resources :suppliers
  get'/suppliers',   :to => 'suppliers#index' 
  get 'suppliers/new' => 'suppliers#new' 
  post 'suppliers/create' => 'suppliers#create' 
  patch  'suppliers/:id' =>'suppliers#update'

  get'/suppliers',   :to => 'suppliers#index' 
  get 'suppliers/new' => 'suppliers#new'  
  post 'suppliers/create' => 'suppliers#create' 
  patch  'suppliers/:id' =>'suppliers#update'
  
  get 'suppliers/new/_account_supplier_form' => 'suppliers#_account_supplier_form' 
  #get 'suppliers/:id/account_suppliers/new' => 'account_suppliers#new' 
  get'/suppliers/:supplier_id/account_suppliers',   :to => 'suppliers#index' 
  get 'suppliers/:supplier_id/account_suppliers/new' => 'suppliers#new' 
  post 'suppliers/:supplier_id/account_suppliers/create' => 'suppliers#create' 
 

  resources :customers 
  root :to => "bienvenida#index" 


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
