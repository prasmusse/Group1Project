# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
	Score.create([{
scoreID: '5',
userID: Faker::Number.digit,
score: Faker::Number.number(9),
score_level_reached: '3',
time: '5 minutes',

		}])

end




