class AddEmailToAuthors < ActiveRecord::Migration
  def change
  	add_column :authors, :e_mail, :text
  end
end
