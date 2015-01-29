class AddGitHubToAuthor < ActiveRecord::Migration
  def change
  	add_column :authors, :git_hub, :text 
  end
end
