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
									x_pos: 399,
									y_pos: 211,
									width: 24,
									height: 39,
									board_id: 1)

Character.create!(name: "wenda",
									x_pos: 583,
									y_pos: 236,
									width: 19,
									height: 19,
									board_id: 1)

Character.create!(name: "wizard",
									x_pos: 0,
									y_pos: 193,
									width: 20,
									height: 32,
									board_id: 1)