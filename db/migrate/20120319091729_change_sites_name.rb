class ChangeSitesName < ActiveRecord::Migration
  def self.up
    rename_column("sites","site_name","name")
    rename_column("sites","site_url","url")
  end

  def self.down
    rename_column("sites","name","site_name")
    rename_column("sites","url","site_url")
  end
end
