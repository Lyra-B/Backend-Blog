require_relative 'helper'

class AboutActiveRecord < MiniTest::Test

  describe "Given a blog and some posts" do

    before do
      CreateAuthors.new.up
      CreateComments.new.up
      CreateImages.new.up
      CreatePostTags.new.up
      CreatePosts.new.up
      CreateTags.new.up
      # @author = Author.new(:name => "Bob Fleming",
      #  :twitter => "@bobfleming", :image => @image)
      # @image = Image.new(:url => "www.image.com/image")

      @author = Author.create(:name => "Bob Fleming",
       :twitter => "@bobfleming", :image => @image)
      @image = Image.create(:url => "www.image.com/image")


      @post_one = Post.create(:title => "Active Record",
       :body => "lkajfhsdhdshsa", :author => @author)
      @post_one.post_tags << PostTag.create(:tag => @tag_two)
      @comment_one = Comment.create(:body => "Excellent Article!" )
      @tag_two = Tag.create(:name => "Programming")

      
      @post_two = Post.create(:title =>"I love programming!",
       :body => "kjasjdjkshghjuhjsdhjsd",
        :author => @author)
      @post_two.post_tags << PostTag.create(:tag => @tag_two)
      @comment_two = Comment.create(:body => "We can go together!")

      @post_three = Post.create(:title => "I want to go to Paris",
       :body => "lkjdjHJSDHsjshhsjakAS",
       :author => @author)
  		@post_three.post_tags << PostTag.create(:tag => @tag_one)
      @tag_one = Tag.create(:name => "General")
    end

    after do 
      CreateAuthors.new.down
      CreateComments.new.down
      CreateImages.new.down
      CreatePostTags.new.down
      CreatePosts.new.down
      CreateTags.new.down
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
      end

      # it "should find the tags that the author has posted about" do
      #   assert_equal @tag_two, @author.tags.first
      # end
    end

    # describe "the posts" do
    #   it should have 

      
    # end
   
  end
end