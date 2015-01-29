class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :tags, :through => :posts
  belongs_to :image
  set_table_name :users
end 