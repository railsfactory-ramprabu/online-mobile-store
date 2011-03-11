class AddDateToUsers < ActiveRecord::Migration
  def self.up
       add_column :users, :select_date,:date
  end

  def self.down
    remove_column :users, :select_date
  end
end
