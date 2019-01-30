# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  user = User.create!(name: Faker::Name.first_name)
end

10.times do
  link = Link.create!(name: Faker::Book.title, user_id: Faker::Number.between(1, 10))
end
  
10.times do
  comment = Comment.create!(text: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 10), link_id: Faker::Number.between(1, 10))
end
  
10.times do
  commentcomment = CommentComment.create!(text: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 10), comment_id: Faker::Number.between(1, 10), position: Faker::Number.digit)
end
