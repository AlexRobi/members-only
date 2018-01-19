require 'faker'

5.times do |i|
  User.create(name: "#{Faker::StarWars.character}", 
              email: "user#{i}@example.com",
              avatar_src: Faker::Avatar.image("#{i}", "150x150", "jpg", "set4", "bg2"),
              password: "password",
              password_confirmation: "password")
end

5.times do
  5.times do |i|
    Post.create(content: "#{Faker::StarWars.quote}",
                user_id: i)
  end
end

User.create(name: "Foo Bar", email: "foo@bar.com",
            password: "foobar",
            avatar_src: "#{Faker::Avatar.image('avatar')}",
            password_confirmation: "foobar")