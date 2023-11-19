require 'date'

BlogPost.destroy_all
user = User.where(email: 'yk@gmail.com').first_or_initialize
user.update!(
  password: 'password'
)

puts 'Creating posts...'

time_examples = [DateTime.current, Date.today.next_year, nil ]
100.times do |i|

   BlogPost.create(title: "Blog Post #{i+1}", content: 'This is my published blog post', published_at: time_examples.sample)
   puts i+1
end
puts BlogPost.all
puts 'Finished!'
