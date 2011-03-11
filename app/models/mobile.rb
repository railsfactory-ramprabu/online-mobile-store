class Mobile < ActiveRecord::Base
validates :name,:uniqueness=>true, :presence => true
has_many :products

end
