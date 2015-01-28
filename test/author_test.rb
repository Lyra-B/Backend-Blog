require_relative 'helper'

describe "Given a blog and some posts" do

  before do
    @author = Author.new(:name => "Bob Fleming",
     :twitter => "@bobfleming", :image => @image)
    @image = Image.new(:url => "www.image.com/image")


    @post_one = Post.new(:title => "Active Record",
     :body => "lkajfhsdhdshsa", :comment => @comment_one, :author => @author)
    @post_one.post_tags << PostTag.new(:tag => @tag_one)
    @comment_one = Comment.new(:body => "Excellent Article!" )
    @tag_one = Tag.new(:name => "General")

    
    @post_two = Post.new(:title =>"I love programming!",
     :body => "kjasjdjkshghjuhjsdhjsd", :comment => @comment_one,
      :author => @author)
    @post_two.post_tags << PostTag.new(:tag => @tag_one)
    @tag_two = Tag.new(:name => "Programming")
    @comment_two = Comment.new(:body => "We can go together!")

    @post_three = Post.new(:title => "I want to go to Paris",
     :body => "lkjdjHJSDHsjshhsjakAS",
     :comment => @comment_two, :author => @author)
		@post_three.post_tags << PostTag.new(:tag => @tag_two)
    
  end

  it "should belong to image" do
    assert_equal true,@author.respond_to?(:image_id)
  end

end