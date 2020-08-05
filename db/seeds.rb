# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(nickname: "dhrubo")
user2 = User.create(nickname: "rasel")
user3 = User.create(nickname: "nasir")
user4 = User.create(nickname: "jimmy")

game1 = Game.create(user_id: 1, score: 100)
game1 = Game.create(user_id: 1, score: 500)
game1 = Game.create(user_id: 2, score: 500)
game1 = Game.create(user_id: 3, score: 200)
game1 = Game.create(user_id: 4, score: 400)
game1 = Game.create(user_id: 3, score: 200)
game1 = Game.create(user_id: 4, score: 300)
game1 = Game.create(user_id: 2, score: 450)
