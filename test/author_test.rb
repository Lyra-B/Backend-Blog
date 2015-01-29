require_relative 'helper'

class AboutActiveRecord < MiniTest::Test

  describe "Given a blog and some posts" do

    before do
      @author = Author.create(:name => "Bob Fleming",
       :twitter => "@bobfleming", :image => @image)
      @image = Image.create(:url => "www.image.com/image")


      @post_one = Post.create(:title => "Active Record",
       :body => "lkajfhsdhdshsa", :comment => @comment_one, :author => @author)
      @post_one.post_tags << PostTag.create(:tag => @tag_one)
      @comment_one = Comment.create(:body => "Excellent Article!" )
      @tag_one = Tag.create(:name => "General")

      
      @post_two = Post.create(:title =>"I love programming!",
       :body => "kjasjdjkshghjuhjsdhjsd", :comment => @comment_one,
        :author => @author)
      @post_two.post_tags << PostTag.create(:tag => @tag_one)
      @tag_two = Tag.create(:name => "Programming")
      @comment_two = Comment.create(:body => "We can go together!")

      @post_three = Post.create(:title => "I want to go to Paris",
       :body => "lkjdjHJSDHsjshhsjakAS",
       :comment => @comment_two, :author => @author)
  		@post_three.post_tags << PostTag.create(:tag => @tag_two)
    end



    describe "in total" do
      it "should have the right number of models" do
        assert_equal 3, Post.count
        assert_equal 2, Tag.count
        assert_equal 2, Comment.count
        assert_equal 1, Author.count
      end

      it "should respond to other models" do
        assert_equal true,@author.respond_to?(:image_id)
        # assert_equal false,@post_two.responds_to?(:tag)
        # assert_equal true,@post_one.responds_to?(:comment)
        # assert_equal true, 
      end
    end

    # describe "the posts" do
    #   it should have 

      
    # end

  end
end