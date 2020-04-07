class PostsController < ApplicationController
  before_action :logged_in_user
  def index
    @posts = Post.all
    @post = Post.all.order(updated_at: :desc).limit(1)

    
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
    end

  private

  def post_params
    params.require(:post).permit(:text, :video)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
end


def logged_in?
  !current_user.nil?
end

end
