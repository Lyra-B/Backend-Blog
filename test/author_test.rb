require_relative 'helper'
require 'faker'

class AboutActiveRecord < MiniTest::Test

  describe "Authors" do
    describe "validations" do
      before do 
        @author = Author.new
        @author.valid?
      end

      it "should validate the name" do
        @author.errors[:name].must_include "can't be blank"
      end

      it "should validate the name is longer than 10 characters" do
        @author.errors[:name].must_include "is too short (minimum is 10 characters)"
      end

      it "should validate twitter which starts with @" do
        # unless @author.twitter.starts_with? '@'
        #   @author.valid?
        @author.errors[:twitter].must_include "must start with @"
        # end
      end

      it "should validate email" do
        @author.errors[:e_mail].must_equal ["can't be blank", "is too short (minimum is 5 characters)", "must contain @"]
      end

      it "should validate password and confirmation" do
      #  @author.password = "1234"
      #  #@author.password_confirmation = false
      #  @author.valid?
        @author.errors[:password].must_include "can't be blank", "is too short (minimum is 8 character)"
       end

      # it "should validate age more than 21" do
      # end

      # it "should validate dob to be before 1/1/1994 and after 1/1/1995" do
      # end

      # it "should validate agreed_tc set to one or true" do
      # end

    end

  end


  describe "Posts" do
    describe "validations" do
      before do
        @post = Post.new
        @post.valid?
      end
      it "should validate title" do
        @post.title = "Ruby"
      end
      it "should have a body" do
      end
      it "should have a body at least 20 characters" do
      end
    end
  end

  describe "Tags" do
    describe "validations" do 
      it "should validate name on tag, which is one of the list" do

      end
    end
  end




      # describe "Given a blog and some posts" do

#     before do
#       CreateAuthors.new.up
#       CreateComments.new.up
#       CreateImages.new.up
#       CreatePostTags.new.up
#       CreatePosts.new.up
#       CreateTags.new.up
#       # @author = Author.new(:name => "Bob Fleming",
#       #  :twitter => "@bobfleming", :image => @image)
#       # @image = Image.new(:url => "www.image.com/image")

#       @author = Author.create(:name => "Bob Fleming",
#        :twitter => "@bobfleming", :image => @image)
#       @image = Image.create(:url => "www.image.com/image")


#       @post_one = Post.create(:title => "Active Record",
#        :body => "lkajfhsdhdshsa", :author => @author)
#       @post_one.post_tags << PostTag.create(:tag => @tag_two)
#       @comment_one = Comment.create(:body => "Excellent Article!" )
#       @tag_two = Tag.create(:name => "Programming")

      
#       @post_two = Post.create(:title =>"I love programming!",
#        :body => "kjasjdjkshghjuhjsdhjsd",
#         :author => @author)
#       @post_two.post_tags << PostTag.create(:tag => @tag_two)
#       @comment_two = Comment.create(:body => "We can go together!")

#       @post_three = Post.create(:title => "I want to go to Paris",
#        :body => "lkjdjHJSDHsjshhsjakAS",
#        :author => @author)
#   		@post_three.post_tags << PostTag.create(:tag => @tag_one)
#       @tag_one = Tag.create(:name => "General")
#     end

#     after do 
#       CreateAuthors.new.down
#       CreateComments.new.down
#       CreateImages.new.down
#       CreatePostTags.new.down
#       CreatePosts.new.down
#       CreateTags.new.down
#     end




#     describe "in total" do
#       it "should have the right number of models" do
#         assert_equal 3, Post.count
#         assert_equal 2, Tag.count
#         assert_equal 2, Comment.count
#         assert_equal 1, Author.count
#       end

#       it "should respond to other models" do
#         assert_equal true,@author.respond_to?(:image_id)
#       end

#       # it "should find the tags that the author has posted about" do
#       #   assert_equal @tag_two, @author.tags.first
#       # end
#     end

#     # describe "the posts" do
#     #   it should have 

      
#     # end
   
#   end
end