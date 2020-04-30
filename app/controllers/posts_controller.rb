class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC').page(params[:page]).per(6)
  end

  def new 
    @post = Post.new
  end

  def create
    if Post.create(post_params)
      redirect_to '/posts'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy 
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/posts'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to '/posts'
  end


  private
  def post_params
    params.require(:post).permit(:title, :comment, :content)
  end

end
