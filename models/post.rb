class Post < ActiveRecord::Base
	belongs_to :author
	has_many :images
	has_many :comments
	has_many :post_tags
	has_many :tags, :through => :post_tags

	# validates :title, presence: true
	# validates :body , presence: true, length: {
	# 	minimum: 20,
 #    tokenizer: lambda { |str| str.split(/\s+/) },
 #    too_short: "must have at least 20 words",
	# }
end