# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user =User.where(email: "yk@gmail.com").first_or_initialize
user.update!(
   password: "password",
   password: "password"
   )
puts "Creating restaurants..."

BlogPost.create([
{title: "Hello World", body:"This is my first blog post"},
{title: "Hello Cosmos", body:"This is my second blog post"}
])
puts "Finished!"
