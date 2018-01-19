def create_user(name, email, password)
  User.create(name: name, email: email, password: password,
              password_confirmation: password)
end

create_user("Cameron Howe", "user1@example.com", "foobar")
create_user("Saul Goodman", "user2@example.com", "foobar")
create_user("Maurice Moss", "user3@example.com", "foobar")
create_user("Dwight Schrute", "user4@example.com", "foobar")
create_user("Leslie knope", "user5@example.com", "foobar")

Post.create(content: "I want to build something that 
  makes people fall in love", user_id: 1)
Post.create(content: "Don't drink and drive. But if you do, call me. ", user_id: 2)
Post.create(content: "I think I've got better things to do than to talk to
  friends and flirt with people, thank you.", user_id: 3)
Post.create(content: "When I die. I want to be frozen. 
  And if they have to freeze me in pieces, so be it. I will wake up 
  stronger than ever, because I will have used that time, to 
  figure out exactly why I died. And what moves I could have used to 
  defend myself better now that I know what hold he had me in.", user_id: 4)
Post.create(content: "We have to remember what's important in life:
  firends, waffles, and work. Or waffles, friends, work. But work has
  to come third.", user_id: 5)