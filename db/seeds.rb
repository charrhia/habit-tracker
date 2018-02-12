# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# goals = [
#   {name: "Eat Healthy", user_id: 1},
#   {name: "Code", user_id: 1},
#   {name: "Call Friends & Family", user_id: 1},
#   {name: "Stick to Budget", user_id: 1},
#   {name: "Exercise", user_id: 1},
#   {name: "Read", user_id: 1},
#   {name: "Clean", user_id: 1},
#   {name: "Attend a Networking Event", user_id: 1},
#   {name: "Meditate", user_id: 1},
#   {name: "Wake up at 5AM", user_id: 1}
# ]


7.downto(1) do |i|
  input = Input.new(goal_id: 1, user_id: 1)
  input.created_at = i.days.ago
  input.save
end

7.downto(1) do |i|
  input = Input.new(goal_id: 2, user_id: 1)
  input.created_at = i.days.ago
  input.save
end

7.downto(1) do |i|
  input = Input.new(goal_id: 3, user_id: 1)
  input.created_at = i.days.ago
  input.save
end

7.downto(1) do |i|
  input = Input.new(goal_id: 4, user_id: 1)
  input.created_at = i.days.ago
  input.save
end




# inputs.each do |input|
#   Input.create(input)
# end

# goals.each do |goal|
#   Goal.create(goal)
# end
