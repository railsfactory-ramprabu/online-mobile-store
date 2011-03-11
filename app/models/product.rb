class Product < ActiveRecord::Base
	 has_attached_file :paper,:max_size => 20000.kilobytes,
								 :thumbnails => { :thumb => '500x500>'}
								 
	validates :p_name, :p_mrp, :our_price,:save_amount,:paper_file_name,:paper_content_type,:paper_file_size,:paper_updated_at,:presence => true
	
	has_many :features
	belongs_to :mobile
	has_many :comments						 
end
