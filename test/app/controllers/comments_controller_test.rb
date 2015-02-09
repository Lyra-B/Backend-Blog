require 'pry'
require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe "/comments" do
  before do
    DatabaseCleaner.start
    @post = create(:post)
    @author = create(:author)
  end

  it "should return all the comments of the same post" do
    @post.comments << build(:comment, :body => "Cool Article")
    create(:comment, :body => "I shouldn't appear")

    get "/authors/1/posts/1/comments"
    last_response.body.must_match(/Cool Article/)
    last_response.body.wont_match(/I shouldn\'t appear/)
    last_response.status.must_equal 200
  end

  it "should create a new comment" do
    #binding.pry
    assert_equal 0, Comment.count
    get "/authors/#{@author.id}/posts/#{@post.id}/comments", {:body => "Cool Beans!"}
    #binding.pry
    assert_equal 1, Comment.count
  end

  it "should edit a comment" do
    Comment.create(:body => "fasjkdkjsdafhkf")
    get '/comment/1/edit'
    assert last_response.ok?
  end

  it "should update a comment" do
    Comment.create(:body => "fasjkdkjsdafhkf")
    put '/comment/1', {:body => "Updated text"}
    assert_equal "Updated text", Comment.find(1).body
  end

  it "should delete a comment" do
    Comment.create(:body => "fasjkdkjsdafhkf")
    assert_equal 1, Comment.count
    delete 'comment/1'
    assert_equal 0, Comment.count
  end

  after do
    DatabaseCleaner.clean
  end

end
