class HomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)  # 按照创建时间降序排列
    @animals = Animal.all
  end


  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to home_path, notice: "Animal added successfully!"
    else
      render :new
    end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :category)
  end
end