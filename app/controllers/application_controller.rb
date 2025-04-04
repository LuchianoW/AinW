class ApplicationController < ActionController::Base
  # 获取当前登录的用户
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])  # 如果没有当前用户，则从 session 中读取
  end
  helper_method :current_user  # 使 current_user 方法在视图中也可用

  # 如果用户没有登录，重定向到登录页面
  def require_login
    unless current_user  # 如果没有当前用户
      redirect_to login_path, alert: "Please log in to access this page."
    end
  end
end


