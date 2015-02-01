class AddDobToAuthor < ActiveRecord::Migration
  def change
  	add_column :authors, :dob, :date
  end
end
