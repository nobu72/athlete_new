class TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
  end

  def create
    binding.pry
    Tweet.create(tweet_params)
    redirect_to root_path
  end




  private

  def tweet_params
    params.require(:tweet).permit(:date,:place,:text)
  end

end

