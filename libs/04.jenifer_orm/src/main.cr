# # Create first User with model

require "../config/*"
require "./models/user"

user = User.create({
  name: "John Doe",
  age:  26,
})

puts user.inspect
