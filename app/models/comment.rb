class Comment < ActiveRecord::Base
		validates :user_comment,:product_id,:user_id,:presence => true
  	belongs_to :Product
	end
