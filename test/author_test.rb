require_relative 'helper'
require 'Date'

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
        @author.errors[:twitter].must_include "must start with @"
      end

      it "should validate email" do
        @author.errors[:e_mail].must_equal ["can't be blank", "is too short (minimum is 5 characters)", "must contain @"]
      end

      it "should validate password and confirmation" do
        @author.errors[:password].must_include "can't be blank", "is too short (minimum is 8 character)"
       end

      it "should validate age more than 21" do
        @author.errors[:age].must_include "can't be blank", "must be greater than or equal to 21"
      end

      it "should validate dob to be before 1/1/1994 and after 1/1/1995" do
        @author.errors[:dob].must_include "must be before 1/1/1994 and after 1/1/1955"
      end

      it "should validate agreed_tc set to one or true" do
        @author.errors[:agreed_tc].must_include "can't be blank", "must be true"
      end
    end
  end

  describe "Posts" do
    describe "validations" do
      before do
        @post = Post.new
        @post.valid?
      end
      it "should validate title" do
        @post.errors[:title].must_include "can't be blank"
      end
      it "should have a body at least 20 characters" do
        @post.errors[:body].must_include "can't be blank", "must have at least 20 words"
      end
    end
  end

  describe "Tags" do
    describe "validations" do
      it "should validate name on tag, which is one of the list" do

      end
    end
  end
end