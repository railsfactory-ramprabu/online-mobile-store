class HomeController < ApplicationController
	
	
		before_filter :authenticate_user! ,:except=>['index','show','lightbox_display','feature','feature_product']
		layout 'home_layout',:except=>['lightbox_display']
	
	
	def index
		
			redirect_to view_path if current_admin
		 @products=Product.all.paginate :per_page => 12, :page => params[:page]
	end
	
	
	def show
			@mobile=Mobile.find_by_id(params[:id])
			@products=@mobile ? @mobile.products :  Product.all
			@products=@products.paginate :per_page => 12, :page => params[:page]
							render :partial=>"products"
		 end
		 
		 def after_login
			@current_user_except_admin=current_user.name		
				 
		 end

    def lightbox_display
				@id=params[:id]
				@product=Product.find_by_id(@id)
		 
		end
		
		def feature
				val=params[:name]
				@products=Product.find(:all,:conditions=>["features.#{params[:name]} =?",true],:include=>:features)
				@products=@products.paginate :per_page => 12, :page => params[:page]
	 								render :partial=>"products"
		 		  
	  end
				
	 def feature_product
				@id=params[:id]
				@name=params[:name]
       #feature=Product.find(:all,:conditions=>['features.camera=? and mobile_id=2' ,true],:include=>:features)
			 
				@products=Product.find(:all,:conditions=>["features.#{params[:name]} =? and mobile_id=?",true,@id],:include=>:features)	
				@products=@products.paginate :per_page => 12, :page => params[:page]
							render :partial=>"products"
			 
		 end
		 
		 def review
			 @products=Product.find(:all)
		 end
		 
		 def comment
			
				@product=Product.find_by_id(params[:id])
				@id=params[:id]
			  @comment=Comment.find(:all,:conditions=>["product_id=?",@id])
				@comment_arr=[]
				for i in @comment do
					 @comment_arr << i.user_comment
			 end
			  @user_id=Comment.find(:all,:conditions=>["product_id=?",@id],:select=>:user_id)
				@user_other=[]
				
			 for i in @user_id do
        @user_other << i.user_id
			 end 
				
				@user_name=[]
				@user_nameid=[]
				@name=[]
				@image=[]	
				for i in 0..@user_other.length-1 do
					  		 		@user_nameid << User.find_by_id(@user_other[i])
										@name <<@user_nameid[i].name
										@image <<@user_nameid[i].ram.url
				end	
		  @count=@name.length
			
			 end	
	    				
 	
		 def comment_box
		
			 @id=params[:id]
			  render :partial=>"enter_comment"
		
	end	 
	
	  def comment_info
			 	
  	  @product_id=params[:id1]
			@user_comment=params[:comment_value]
		  @comment=Comment.new	
      @comment.product_id=@product_id
			@comment.user_comment=@user_comment
			@comment.user_id=current_user.id
			@comment.save
			@comm_details=Comment.find(:last)
			@user_id=@comm_details.user_id
			@user_name=User.find_by_id(@user_id)
    
         		render :partial =>"dis_comment"

			end
				

	def search_location
	@store_locate=Location.find(:all,:select=>:name)
	@locator =[]
	@store_locate.each do |s|
	@locator <<"#{s.name},"
  end			
			
	end
			
			def location_identify
			@loc_info=params[:location_name]	
			@search_loc=Location.find(:all,:conditions=>["name='#{params[:location_name]}'"])
			puts "**********************"
		  puts @search_loc.length
      render :partial=>"location_display"
			end	
		
  def drog_drop
		
	end
	
	def drag_drop_info 
	puts "************************"
				puts params.inspect
	puts "************************"

			
	end
	
		def test_email
			@email=['ramprabu.n@railsbuddies.com','nramprabu@gmail.com']
		for i in 0..@email.length-1
			UserMailer.delay.send_test_email(@email[i])
	 	end
		
		end
		
						
						
						
end
