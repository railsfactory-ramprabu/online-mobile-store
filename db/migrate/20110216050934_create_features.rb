class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|

      t.string :size
      t.string :weight
      t.boolean :camera
      t.boolean :bluetooth
      t.boolean :player
      t.boolean :fmradio
      t.boolean :gprs
      t.integer :product_id
      t.timestamps
    end
  end

  def self.down
    drop_table :features
  end
end
