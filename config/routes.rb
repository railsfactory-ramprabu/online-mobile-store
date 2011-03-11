OnlinemobileStore::Application.routes.draw do
   
   
 
    devise_for :users

    #~ #root :to => "home#index"

    #~ devise_for :users
        
  
     root :to => "home#index"
     #root :to => "admin#view"
    
    match 'home'=>'admin#home'
    match 'view'=>'admin#view'
    


    
    match 'about'=>'admin#about'
    match 'about1'=>'admin#about1'
    
    match 'company1'=>'admin#company1'

    


    match 'edit'=>'admin#edit'
    
   # match 'view'=>'admin#view'

   match 'company'=>'admin#company'
   
   match 'save'=>'admin#save'

   match 'product'=>'admin#product'
   
  match 'product_info'=>'admin#product_info'

   match 'about'=>'admin#about'


  match 'product_image'=>'admin#product_image'
  
  match 'product_feature'=>'admin#product_feature'

  match 'image_save'=>'admin#image_save'
  
  match 'feature_info'=>'admin#feature_info'
  
 match 'locate'=>'admin#locate'
 
 match 'location_detail'=>'admin#location_detail'
 

 resources :home
 
 match 'after_login' =>"home#after_login"
 
  match 'home/feature/:name' =>"home#feature"
  
 match 'home/feature_product/:name/:id' =>"home#feature_product"


 
 match 'lightbox_display' =>"home#lightbox_display", :as=>'lightbox_display'
 
 match 'review' =>"home#review"
 
match 'search_location' =>"home#search_location"

match 'location_identify' =>"home#location_identify"

 
 match 'hello' =>"home#hello"
 
 match 'key' =>"home#key"
 
 match 'key123' =>"home#key123"



 
match 'comment' =>"home#comment" 
 
post 'comment_info/:id1' =>"home#comment_info" 

#~ post 'comment_info/:id' =>'home#comment_info'


match 'comment_box/:id' =>"home#comment_box" 


match 'color' =>"admin#color" 

match 'color_info' =>"admin#color_info" 

match 'drag_drop' =>"home#drag_drop" 

match '/home/drog_drop_info'=>"home#drag_drop_info"

match 'test_email' =>"home#test_email" 

match 'drag_drop_other'=>'home#drag_drop_other'

   
    
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
