class UsersController < ApplicationController
  def user_page
    @user = User.find(params[:id])
    @posts = @user.posts.includes(:animal, :location)  # 如果你有 animal/location 模型
  end
end