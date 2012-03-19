class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
        t.integer "vertical_id"
        t.string "site_name"
        t.string "site_url"
        t.string "gplus_page_num"
        t.string "fb_page"
        t.string "twitter_username"
      t.timestamps
    end
    add_index("users","vertical_id")
  end
  
  def self.down
    drop_table :sites
  end
  
end
