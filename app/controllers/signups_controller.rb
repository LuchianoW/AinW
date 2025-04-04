class SignupsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id  # 自动登录用户
      redirect_to root_path, notice: 'Account created successfully'
    else
      flash[:alert] = @user.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end


