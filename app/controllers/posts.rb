require 'pry'

BackendBlog::App.controllers :posts do

  get '/' do
    "Hello"
  end

  get :index do
    @author = Author.find(params[:author_id])
    @post = Post.new(:author_id => @author.id)
    render :'posts/index'
  end

  get :show, :map => '', :with => :id do
  end

  post :create, :map => '' do
  @post = Post.new(params[:post])
  end

  put :update, :map => '', :with => :id do
  end

  delete :delete, :map => '', :with => :id do
  end

end
