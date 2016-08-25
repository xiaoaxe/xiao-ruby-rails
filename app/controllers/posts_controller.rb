class PostsController < ApplicationController
  def index
    # @first_content = 'This is some sample text for our awesome new Ruby blog'
    # @second_content = 'This is more sample text for our awesome new Ruby blog'
    @posts = Post.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy

  end
end
