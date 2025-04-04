# 清空表格，避免重复数据
Post.delete_all
User.delete_all
Animal.delete_all
Location.delete_all

# 创建用户
user1 = User.create(username: "Admin", password: "1234")
user2 = User.create(username: "Lu", password: "1234")
user3 = User.create(username: "Jack", password: "1234")
user4 = User.create(username: "Chris", password: "1234")
user5 = User.create(username: "Betty", password: "1234")

# 创建动物
animal1 = Animal.create(name: "Rupert", category: "cat")
animal2 = Animal.create(name: "Buddy", category: "dog")
animal3 = Animal.create(name: "Emily", category: "cat")
animal4 = Animal.create(name: "Josh", category: "cat")
animal5 = Animal.create(name: "Trick", category: "dog")
animal6 = Animal.create(name: "Lucky", category: "dog")
animal7 = Animal.create(name: "Rex", category: "raccoon")
# 创建地点
location1 = Location.create(range: "Barclay St")
location2 = Location.create(range: "Main St")
location3 = Location.create(range: "Royal Ave")
location4 = Location.create(range: "West Park Ave")
location5 = Location.create(range: "Newton St")
location6 = Location.create(range: "King St")

# 创建帖子
Post.create(user: user1, animal: animal1, location: location1, post_content: "OMG!!Rupert is so cuteeee!", date: Time.now)
Post.create(user: user2, animal: animal2, location: location5, post_content: "I saw Buddy! What a cute dog!", date: Time.now)
Post.create(user: user3, animal: animal3, location: location3, post_content: "Emily is sleeping on the grond. Can I steal her?", date: Time.now)
Post.create(user: user4, animal: animal4, location: location2, post_content: "I met Josh today!", date: Time.now)
Post.create(user: user5, animal: animal2, location: location6, post_content: "Buddy! BIG DOG!", date: Time.now)

# 更新用户的post_count和ani_sighting_num
user1.update(post_count: user1.posts.count, ani_sighting_num: user1.posts.distinct.count(:animal_id))
user2.update(post_count: user2.posts.count, ani_sighting_num: user2.posts.distinct.count(:animal_id))
user3.update(post_count: user3.posts.count, ani_sighting_num: user3.posts.distinct.count(:animal_id))
user4.update(post_count: user4.posts.count, ani_sighting_num: user4.posts.distinct.count(:animal_id))
user5.update(post_count: user5.posts.count, ani_sighting_num: user5.posts.distinct.count(:animal_id))



# 你可以根据需求插入更多的动物、地点、帖子等
