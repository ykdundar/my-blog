BlogPost.destroy_all
user =User.where(email: "yk@gmail.com").first_or_initialize
user.update!(
   password: "password",
   password: "password"
   )
puts "Creating posts..."

BlogPost.create([
{title: "Hello World", body:"This is my published blog post", published_at: DateTime.current },
{title: "Hello Mars", body:"This is my scheduled blog post",  published_at: 1.day.from_now},
{title: "Hello Cosmos", body:"This is my draft blog post"}
])
puts BlogPost.all
puts "Finished!"
