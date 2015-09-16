# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

4.times do |n| 
	name = "board-#{n+1}"
	Board.create!(name: name)
end

# characters = ["waldo", "wenda", "wizard", "odlaw"]

# characters.each do |character| 
# 	Character.create!(name: character)
# end

Character.create!(name: "waldo",
									x_pos: 100,
									y_pos: 100,
									width: 10,
									height: 10,
									board_id: 1)

Character.create!(name: "wenda",
									x_pos: 150,
									y_pos: 150,
									width: 10,
									height: 10,
									board_id: 1)

Character.create!(name: "wizard",
									x_pos: 200,
									y_pos: 200,
									width: 10,
									height: 10,
									board_id: 1)