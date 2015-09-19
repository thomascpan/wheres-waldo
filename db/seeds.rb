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
Character.create!(name: "waldo",
									x_pos: 529,
									y_pos: 548,
									width: 35,
									height: 60,
									board_id: 2)
Character.create!(name: "wenda",
									x_pos: 541,
									y_pos: 440,
									width: 16,
									height: 26,
									board_id: 2)
Character.create!(name: "wizard",
									x_pos: 798,
									y_pos: 572,
									width: 22,
									height: 22,
									board_id: 2)
Character.create!(name: "waldo",
									x_pos: 428,
									y_pos: 286,
									width: 26,
									height: 38,
									board_id: 3)
Character.create!(name: "wizard",
									x_pos: 506,
									y_pos: 285,
									width: 30,
									height: 46,
									board_id: 3)
Character.create!(name: "odlaw",
									x_pos: 192,
									y_pos: 290,
									width: 17,
									height: 42,
									board_id: 3)
Character.create!(name: "waldo",
									x_pos: 345,
									y_pos: 157,
									width: 17,
									height: 34,
									board_id: 4)
Character.create!(name: "wenda",
									x_pos: 131,
									y_pos: 139,
									width: 14,
									height: 21,
									board_id: 4)
Character.create!(name: "wizard",
									x_pos: 671,
									y_pos: 523,
									width: 29,
									height: 47,
									board_id: 4)
Character.create!(name: "odlaw",
									x_pos: 144,
									y_pos: 342,
									width: 17,
									height: 29,
									board_id: 4)