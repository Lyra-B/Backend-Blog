BackendBlog::App.controllers :comments, :parent => {:authors => :posts} do

  get :index do
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(:post_id => @post.id)
    render :'comments/index'
  end

  post :create, :map => '' do
    binding.pry
    @comment = Comment.new(params[:comment])
    #binding.pry
    @comment.save!
    redirect 'comments/show'
  end

  get :edit, :map => 'comments/:id/edit' do
    @comment = Comment.find(params[:id])
    render :'comments/edit'
  end

  put :update, :map => '', :with => :id do
    @comment = Comment.find(params[:id])
    @comment.update(params[:comment])
    redirect 'comments/show'

  end

  delete :delete, :map => '', :with => :id do
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect 'comments/index'
  end

  get :show, :map => '', :with => :id do
    @comment = Comment.find(params[:id])
    render :'comments/show'
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
