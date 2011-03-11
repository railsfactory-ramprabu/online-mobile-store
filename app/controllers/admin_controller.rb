class AdminController < ApplicationController
layout 'admin_layout'
def create
	
end


def home
	if request.xhr? 		         
										render  :partial=>"home_page"
				end
end
	

def about
	
		if request.xhr? 		         
										render  :partial=>"about_us"
									end
end	


def edit
	
@logid=params[:data][:logid]
@pwd=params[:data][:pwd]
@user=User.find_by_email(@logid)
puts "--------------------------------"
puts @user.email
puts @user.password

puts @user.inspect
 puts @logid
 puts @pwd
puts "----------------"
if ((@logid==@user.email) && (@pwd.to_i==@user.password.to_i))
	      puts "---------------------------"
	      flash[:success]="logged successfully"
				redirect_to :action=>"view"
				
else
				flash[:error]="Invalid username & password"
				render:action=>"create"

end
end


def company
	
  if request.xhr?
		  
          render  :partial=>"company_details"
		end	
	
end


def company1
	
end	
	

def save
	

	if request.xhr? 		         
		       @name=Mobile.new(params[:data])
	         @name.save
	          render :update do |page|
                    page.alert "company name has been saved successfully"
										page.replace_html 'ram' , :partial=>"company_details"
				end
				end
	
	 	
	
end

def product
  if request.xhr?
          render :partial=>"product"
				end
				end	
			
			
	def product_info
	   
				          	@product=Product.create(params[:product])
										responds_to_parent do
												render :update do |page|
														page<<"alert('product details has been saved successfully')"
														page.call ['clear_form']
												end
										end
								
	    
  end
			
		

def product_image
  if request.xhr?
          render :update do |h|
          h.replace_html 'ram', :partial=>"upload"
			end
		end	
		
	end
	
	
	def product_feature
		 if request.xhr?
          render :partial=>"feature"
		end	
	end	
	
	
	def feature_info
		
		@feature=Feature.new(params[:feature])
	  @feature.save
			responds_to_parent do
				render :update do |page|
														page<<"alert('feature details has been saved successfully')"
														page.call ['clear_form_feature']
												end
										end
	end
	
	
	
	def image_save
		 @user = Attachment.new( params[:user] )
		 @user.save
	  
		
	end
	
  def locate
		if request.xhr?
          render :partial=>"locate_info"
			end
	end
	
	
	def location_detail
	 	
		 	@location=Location.new(params[:locate])
			@location.save
			if request.xhr?
          render :update do |page|
					page.alert "Location details has been saved successfully"	
          page.replace_html 'ram', :partial=>"locate_info"
			end
		end	
			
  end
	
	
	def color
		
  if request.xhr? 		         
		puts "------------------------------"
   	render :partial=>"color_info"
		end
	end
	
end
