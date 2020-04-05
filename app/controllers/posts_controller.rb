class PostsController < ApplicationController
  before_action :logged_in_user
  def index
  end

  def new
  end

  def creare
  end

  private

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
