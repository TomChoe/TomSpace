# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: 'Shit happens', body: 'Everyday I hustle', user_id: 1)
Post.create(title: 'Second post', body: 'This is a new post', user_id: 2)
Comment.create(user_id: 2, post_id: 1, body: 'You a busta')
Comment.create(user_id: 1, post_id: 2, body: 'this is comment')