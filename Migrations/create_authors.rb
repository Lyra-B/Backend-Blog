class CreateAuthors < ActiveRecord::Migration
	
	def up
		create_table :authors do |t|
			t.text :name
			t.text :twitter
			t.timestamps null:false
			t.integer :image_id
		end
	end

	def down 
		drop_table :authors
	end
end