class Image < ActiveRecord::Base
	has_one :author
	belongs_to :post
end
