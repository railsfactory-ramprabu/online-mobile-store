class CreateMobiles < ActiveRecord::Migration
  def self.up
    create_table :mobiles do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :mobiles
  end
end
