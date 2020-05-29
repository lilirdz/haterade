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

u1 = User.create(name:"Fillus",username:"fillyfill",password: "12345678", image_url:"",bio:"Not from Philly and I have strong opinions about Beyonce.")
u2 = User.create(name:"Coal",username:"coalslaw",password: "12345678", image_url:"",bio:"I like Poker and I'm the dopest Poker player around.")
u3 = User.create(name:"Saul Ranchez",username:"sranchez",password: "12345678", image_url:"",bio:"I like coding and I'm the dopest coder around.")
u4 = User.create(name:"Edlose ",username:"awakewindows",password: "12345678", image_url:"",bio:"Lean, Mean, and Hater of Green.")
u5 = User.create(name:"VD",username:"veedee",password: "12345678", image_url:"",bio:"Good morning, everyone!")

category1 = Category.create(name: "Music")
category2 = Category.create(name: "Sports")
category3 = Category.create(name: "Movies")
category4 = Category.create(name: "Food")
category5 = Category.create(name: "Misc")
category6 = Category.create(name: "Celebrities")

post1 = Post.create(title: "Crispyyyyy",user_id: u3.id, category_id: category5.id, content: "Crispy ain't a real word!")
post2 = Post.create(title: "Beyonce",user_id: u1.id, category_id: category6.id, content: "Beyonce has no talent!")
post3 = Post.create(title: "Fruit Wars",user_id: u1.id, category_id: category4.id, content: "Vegetables are tastier than fruit")
post4 = Post.create(title: "POKERRRR SPORT",user_id: u2.id, category_id: category2.id, content: "Poker should be in the olympics")
post5 = Post.create(title: "Picture Me Rollin'",user_id: u1.id, category_id: category5.id, content: "I belong on a coin")
post6 = Post.create(title: "UFC Brah!",user_id: u2.id, category_id: category2.id, content: "UFC is faker than WWE")
post7 = Post.create(title: "Coffee Me",user_id: u2.id, category_id: category4.id, content: "Coffee ice cream is for adults trying to relive their childhood!")
post8 = Post.create(title: "Lebron James",user_id: u3.id, category_id: category2.id, content: "People only think Lebron is a good player because all his teammates have sucked")
post9 = Post.create(title: "Guitars",user_id: u3.id, category_id: category1.id, content: "Guitars are unless in a band. They also fail at making you look cool.")
post10 = Post.create(title: "The Witch",user_id: u4.id, category_id: category3.id, content: "The Witch is undoubtedly the scariest movie of all time. It makes The Conjuring look like a Hallmark movie.")
post11 = Post.create(title: "Pirates of the Carribean",user_id: u4.id, category_id: category3.id, content: "The last two movies are just as good as the first.")
post12 = Post.create(title: "T SWIFT my bae",user_id: u4.id, category_id: category6.id, content: "Taylor Swift is so dreamy")
post13 = Post.create(title: "Pineapple Pizza",user_id: u5.id, category_id: category4.id, content: "Pineapple belongs on pizza!")
post14 = Post.create(title: "Indian Food",user_id: u5.id, category_id: category4.id, content: "Indian food is bland and boring.")
post15 = Post.create(title: "The Last Dance",user_id: u5.id, category_id: category3.id, content: "The Last Dance is a lie. MJ ain't that good and he's a liar.")



