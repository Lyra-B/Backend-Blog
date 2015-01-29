class CreatePosts < ActiveRecord::Migration
	def up
		create_table :posts do |t|
			t.text :body
			t.text :title
			t.timestamps #null:false
			t.integer :author_id
		end
	end

	def down 
		drop_table :posts
	end
end
