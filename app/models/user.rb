class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :animals, through: :posts # 新增这行来通过Post获取动物
end