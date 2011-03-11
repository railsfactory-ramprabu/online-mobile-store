class AddFieldsToUser < ActiveRecord::Migration
  def self.up
      add_column :users, :name,:string
      add_column :users, :address,:text
      add_column :users, :country, :string
      add_column :users, :state, :string
      add_column :users, :city, :string
      add_column :users, :pincode, :string
      add_column :users, :mobileno, :string
  end

  def self.down
     remove_column :users, :name
     remove_column :users, :address
     remove_column :users, :country
     remove_column :users, :state
     remove_column :users, :city
     remove_column :users, :pincode
     remove_column :users, :mobileno

          
  end
end
