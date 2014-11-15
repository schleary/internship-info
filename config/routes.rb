Rails.application.routes.draw do

  get    "home/index",                                  as: :home_index
  root   "home#index",                                  as: :root

  # companies routes
  get	    "/companies",              to:  "companies#index",   as: :companies
  get	    "/companies/new",          to:	"companies#new",     as: :companies_new
  post    "/companies",              to:	"companies#create",  as: :companies_create
  get	    "/companies/:id",          to:	"companies#show",    as: :companies_show
  get	    "/companies/:id/edit",     to:	"companies#edit",    as: :companies_edit
  patch	  "/companies/:id",          to:	"companies#update",  as: :companies_update
  get     "/companies/:id/delete",   to:  "companies#destroy", as: :companies_destroy
  delete  "/companies/:id",          to:	"companies#destroy", as: :companies_delete
  # get     "/companies/:id/upvote",   to:  "companies#upvote",  as: :companies_upvote

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
