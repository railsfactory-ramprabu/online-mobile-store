module ApplicationHelper

def current_admin
    current_user.id==1 if current_user
		end
		
end
