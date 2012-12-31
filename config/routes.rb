Ispsoft::Application.routes.draw do

  resources :history_equipments

  resources :equipment

  resources :suppliers

  resources :makes do
        resources :models
 end
  resources :localidades

  resources :planes

  devise_for :users

  resources :mktcxes



  resources :clientes do
    resources :pagos
    resources :clientesmkts
    resources :client_equipments 
  end

match "/clientes"=> "clientes#inicio"
match "/clientes/llamadas"=> "clientes#llamadas"
#  resources :clientes do
 #   resources :clientesmkts
 # end

  match "/pagos" => "pagos#all"
  match "/models" =>"models#index"

#  match "/pagos" =>"pagos#servicios"

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
  
 authenticated :user do
  root :to => 'clientes#inicio'
 end
unauthenticated :user do
  devise_scope :user do
  get "/" => "devise/sessions#new"
  end
end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end