# class CreateComments < ActiveRecord::Migration
	
# 	def up
# 		create_table :comments do |t|
# 			t.text :body
# 			t.text :kudos
# 			t.timestamps #null:false
# 			t.integer :post_id
# 			t.integer :author_id
# 		end
# 	end

# 	def down 
# 		drop_table :comments
# 	end
# end