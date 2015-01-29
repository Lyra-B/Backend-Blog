class AddSlugToTag < ActiveRecord::Migration
  def change
  	add_column :tags, :slug, :text
  end
end
