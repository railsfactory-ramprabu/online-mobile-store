class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :p_name
      t.string :p_mrp
      t.integer :our_price
      t.integer :save_amount
      t.string :paper_file_name
      t.string :paper_content_type
      t.integer :paper_file_size
      t.datetime :paper_updated_at
      t.integer :mobile_id
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
