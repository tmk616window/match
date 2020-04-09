class PostsController < ApplicationController
  def index
    @posts = Post.where(task_id: current_user.id)
  end
  
  def detail
    @post = Post.find(params[:id])
  end
  
  def show
    @post = Post.new
    @task = Task.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = '応募完了しました。メールからの返信をお待ちください。' 
      redirect_to root_path
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private
  def post_params
    params.require(:post).permit(:content,:task_id,:name,:old,:sex,:job,:email)
  end
end
