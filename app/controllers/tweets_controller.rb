class TweetsController < ApplicationController
  before_action :logged_in_user
  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end




  private

  def tweet_params
    params.require(:tweet).permit(:date,:place,:text)
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

