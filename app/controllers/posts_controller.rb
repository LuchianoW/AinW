class PostsController < ApplicationController
  def index
    @posts = Post.order(date: :desc)  # 按照日期降序排列
  end
  
  def new
    @post = Post.new
    @locations = Location.all  # 获取所有的 Location
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.date = Time.now  # 设置为当前时间

    if @post.save
      flash[:notice] = "Post created successfully!"
      redirect_to home_path  # 可以根据需要更改为其他路径
    else
      @locations = Location.all  # 如果保存失败，重新加载 locations
      flash[:alert] = "Error creating post."
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:animal_id, :location_id, :post_content, :date)
  end
end

