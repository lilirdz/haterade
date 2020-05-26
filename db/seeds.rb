# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Category.destroy_all

u1 = User.create(name:"Roxy",username:"roxyrod",password: "123", image_url:"",bio:"Cute little chihuahua")
u2 = User.create(name:"Charlie",username:"charliechea",password: "456", image_url:"",bio:"Cute little terrier mix")
u3 = User.create(name:"Cheddar",username:"unicorg",password: "12345", image_url:"",bio:"Cute little corgi")

category1 = Category.create(name: "Music")
category2 = Category.create(name: "Sports")
category3 = Category.create(name: "Movies")
category4 = Category.create(name: "Food")
category5 = Category.create(name: "Places")
category6 = Category.create(name: "Celebrities")

post1 = Post.create(user_id: u1.id, category_id: category1.id, content: "Content of post1")
post2 = Post.create(user_id: u1.id, category_id: category2.id, content: "Content of post2")
post3 = Post.create(user_id: u1.id, category_id: category3.id, content: "Content of post3")
post4 = Post.create(user_id: u1.id, category_id: category4.id, content: "Content of post4")
post5 = Post.create(user_id: u1.id, category_id: category5.id, content: "Content of post5")
post6 = Post.create(user_id: u1.id, category_id: category6.id, content: "Content of post6")
post7 = Post.create(user_id: u2.id, category_id: category2.id, content: "Content of post7")
post8 = Post.create(user_id: u2.id, category_id: category3.id, content: "Content of post8")
post9 = Post.create(user_id: u2.id, category_id: category4.id, content: "Content of post9")
post10 = Post.create(user_id: u2.id, category_id: category1.id, content: "Content of post10")
post11 = Post.create(user_id: u3.id, category_id: category2.id, content: "Content of post11")
post12 = Post.create(user_id: u3.id, category_id: category6.id, content: "Content of post12")
post13 = Post.create(user_id: u3.id, category_id: category5.id, content: "Content of post13")
post14 = Post.create(user_id: u3.id, category_id: category1.id, content: "Content of post14")
post15 = Post.create(user_id: u3.id, category_id: category3.id, content: "Content of post15")


