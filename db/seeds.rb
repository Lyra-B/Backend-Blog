require './models/user'
require './models/comment'
require './models/image'
require './models/post'
require './models/post_tag'
require './models/tag'



Author.find_or_create_by_name!(:name => "Dan", :twitter => "dmgarland", :git_hub => "dmgarland")
Author.find_or_create_by_name!(:name => "Kristian", :twitter => "kknevitt", :git_hub => "kknevitt")
@lyra = Author.find_or_create_by_name!(:name => "Glykeria", :twitter => "lyrab", :git_hub => "lyrab")
Author.find_or_create_by_name!(:name => "Dan", :twitter => "dsteele", :git_hub => "dsteele")
Author.find_or_create_by_name!(:name => "Richard", :twitter => "rich", :git_hub => "rich")
Author.find_or_create_by_name!(:name => "Kin", :twitter => "kinbang", :git_hub => "kinbang")

@post1 = Post.find_or_create_by_title!(:title => "Programming", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
Post.find_or_create_by_title!(:title => "My trip to Prague", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
Post.find_or_create_by_title!(:title => "Active Record", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => false)
Post.find_or_create_by_title!(:title => "Funny Things", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)
Post.find_or_create_by_title!(:title => "Amazing Post", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => false)
Post.find_or_create_by_title!(:title => "Cool Movies", :body => "jdfhsgdkasdajddahdjadgadhadhgdfdhag", :published => true)



@lyra.posts << @post1

Tag.find_or_create_by_name!(:name => )


