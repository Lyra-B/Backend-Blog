class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments
  belongs_to :image
end 