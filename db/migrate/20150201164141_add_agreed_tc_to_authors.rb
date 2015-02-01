class AddAgreedTcToAuthors < ActiveRecord::Migration
  def change
  	add_column :authors, :agreed_tc, :boolean
  end
end
