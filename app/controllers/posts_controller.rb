class PostsController < ApplicationController
  before_action :logged_in_user
  def index
    @tweets = Tweet.all.order(updated_at: :desc).limit(1)
    @category = Category.all
    @post = Post.all.order(updated_at: :desc).limit(1)
    @posts = Post.all 


    
  end

  def new
   
    @post = Post.new
    # @post.build_category

  end

  def create

    @post = Post.create(post_params)
    # @post.save
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def destroy
    post = post.find(params[:id])
    post.destroy
  end
  

  private

  def post_params
    params.require(:post).permit(:text, :video)

  end

  # def post_params
  #   params.require(:post).permit(:text, :video,category_attributes:[:text,:post_id])

  # end


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
