class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    
    if user&.authenticate(params[:password])  # 这里调用了 has_secure_password
      session[:user_id] = user.id
      redirect_to home_path, notice: 'Login successful'
    else
      flash[:alert] = 'Invalid username or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out successfully'
  end
end




