require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "/posts" do
  before do
  	@author = create(:author)
  	@author.posts << build(:post, :title => "I love nesting")

  	create(:post, :title => "I shouldn't appear")
    get "/authors/#{@author.id}/posts"
  end

  it "should return all the posts by the same author" do
  last_response.body.must_match(/I love nesting/)
  last_response.body.wont_match(/I shouldn\'t appear/)
  last_response.status.must_equal 200
  end
end
