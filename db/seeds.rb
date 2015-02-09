require './models/author'
require './models/comment'
require './models/image'
require './models/post'
require './models/post_tag'
require './models/tag'


@lyra = Author.find_or_create_by_name!(:name => "Glykeria", :twitter => "lyrab", :git_hub => "lyrab")

@post1 = Post.find_or_create_by_title!(:title => "Programming", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
@post2 = Post.find_or_create_by_title!(:title => "My trip to Prague", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
@post3 = Post.find_or_create_by_title!(:title => "Active Record", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => false)
@post4 = Post.find_or_create_by_title!(:title => "Funny Things", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
@post5 = Post.find_or_create_by_title!(:title => "Amazing Post", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => false)
@post6 = Post.find_or_create_by_title!(:title => "Cool Movies", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)

@lyra.posts << @post1
@lyra.posts << @post2
@lyra.posts << @post3
@lyra.posts << @post4
@lyra.posts << @post5
@lyra.posts << @post6

# @tag1 = Tag.find_or_create_by_name!(:name => "Programming")
# @tag2 = Tag.find_or_create_by_name!(:name => "Travelling")
# @tag3 = Tag.find_or_create_by_name!(:name => "Fun")

# # @post1.tags << @tag1
# # @post2.tags << @tag2
# # @post2.tags << @tag3
# # @post4.tags << @tag3
# # @post5.tags << @tag1

@comment1 = Comment.find_or_create_by_body!(:body => "Amazing Article!")
@comment2 = Comment.find_or_create_by_body!(:body => "I've been there too!")
@comment3 = Comment.find_or_create_by_body!(:body => "It's so funny!")

@post1.comments << @comment1
@post2.comments << @comment2
@post4.comments << @comment3

# @image1 = Image.find_or_create_by_url!(:url=>"https://media.licdn.com/mpr/mpr/shrink_65_65/p/4/005/0b3/1cf/1437bdc.jpg")

# @image1.author = @lyra









