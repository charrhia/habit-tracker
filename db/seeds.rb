# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


goals = [
  {name: "Eat Healthy"},
  {name: "Code"},
  {name: "Call Friends & Family"},
  {name: "Stick to Budget"},
  {name: "Exercise"},
  {name: "Read"},
  {name: "Clean"},
  {name: "Attend a Networking Event"},
  {name: "Meditate"},
  {name: "Wake up at 5AM"}
]


goals.each do |goal|
  Goal.create(goal)
end
