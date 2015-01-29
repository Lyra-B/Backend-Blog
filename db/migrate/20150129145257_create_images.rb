class CreateImages < ActiveRecord::Migration
  def up
		create_table :images do |t|
			t.text :url
			t.text :caption
			t.integer :filesize
			t.integer :post_id
		end
	end

	def down 
		drop_table :images
	end
end
