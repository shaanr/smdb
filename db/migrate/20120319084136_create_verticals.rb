class CreateVerticals < ActiveRecord::Migration
  def self.up
    create_table :verticals do |t|
      t.string "name"
      t.timestamps
    end
    
  end
  
  def self.down
    drop_table :verticals
  end
end
