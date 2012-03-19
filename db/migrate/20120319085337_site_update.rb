class SiteUpdate < ActiveRecord::Migration
  def self.up
    add_column("users","vertical_id",:integer)
    add_index("users","vertical_id")
  end

  def self.down
    remove_column("users","vertical_id")
  end
end
