require 'pry'

BackendBlog::App.controllers :posts, :parent => :authors do


 get :index do
  #binding.pry
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





  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end


end