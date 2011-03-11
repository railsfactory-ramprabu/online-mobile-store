class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:address,:country,:state,:city,:pincode,:mobileno,:ram
  validates :name,:address,:country,:state,:city,:pincode,:mobileno,:presence => true
  
  has_attached_file :ram,:max_size => 20000.kilobytes,
								 :thumbnails => { :thumb => '500x500>'}
  
end

