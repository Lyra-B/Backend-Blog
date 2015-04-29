BackendBlog::App.controllers :comments, :parent => {:authors => :posts} do

  get :index do
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new(:post_id => @post.id)
    render :'comments/index'
  end

  post :create, :map => '' do
    @comment = Comment.new(params[:comment])
    @comment.save!
    redirect url(:comments, :show, :id => @comment.id)
  end

  get :edit, :map => 'comments/:id/edit' do
    @comment = Comment.find(params[:id])
    @author = Author.find(params[:author_id])
    @post = Post.find(params[:post_id])
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

end
