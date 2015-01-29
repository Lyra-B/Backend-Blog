class ChangeAuthorToUsers < ActiveRecord::Migration
  def up
  	rename_table :authors, :users
  end

  def down
  	reaname_table :users, :authors
  end
end
