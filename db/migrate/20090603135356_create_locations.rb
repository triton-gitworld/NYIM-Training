class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations, :force => true do |t|
      t.string :name, :venue_link, :map_info, :limit => 255
      t.text :directions
      t.timestamps
    end
  end
  
  def self.down
    drop_table :locations
  end
end
