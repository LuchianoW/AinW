class Post < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  belongs_to :location

  # 添加更新 post_count 和 ani_sighting_num 的逻辑
  after_create :update_user_counts

  private

  def update_user_counts
    user.update(post_count: user.posts.count, ani_sighting_num: user.posts.distinct.count(:animal_id))
  end
end