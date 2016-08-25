class PostsController < ApplicationController
  def index
    # @first_content = 'This is some sample text for our awesome new Ruby blog'
    # @second_content = 'This is more sample text for our awesome new Ruby blog'
    @posts = Post.all
  end

  def new
    @post = Post.new
    @category=Category.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success]='Your post is saved!'
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to post_path, :notice => 'Your post has been updated'
    else
      render edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path :notice => 'Your post has been deleted'
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category_id, :author_id)
  end

end
