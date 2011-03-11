class ApplicationController < ActionController::Base
  
	before_filter :authenticate_user! ,:except=>['after_sign_in']
  protect_from_forgery
  include ApplicationHelper
  
  
 def after_sign_in_path_for(resource_or_scope)
   
   if resource_or_scope.is_a?(User) 
     
    if current_admin
          view_path
    else
                 
         root_path
    end      
       
  else
      super
  end
  
end

end


