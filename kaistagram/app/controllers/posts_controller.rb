class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user.username
  end

  def create
  Post.create(post_params)
  redirect_to root_path
  end

private
  def post_params
    params.require(:post).permit(:caption, :images, :user_id)
  end

end
