class AddVerticalToPage < ActiveRecord::Migration
  def self.up
    add_column("sites","vertical_id",:integer)
    add_index("sites","vertical_id")
  end
  
  def self.down
    remove_column("sites","vertical_id")
    remove_index("sites","vertical_id")
  end
end
