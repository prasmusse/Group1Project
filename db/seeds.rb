# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
	Score.create([{
		score: Faker::Number.number(9),
		user_id: Faker::Number.digit
	
		}])

end

10.times do
	User.create([{
		name: Faker::Name.name,
    image: "https://cdn.pixabay.com/photo/2018/02/21/18/24/cat-3171125_1280.jpg"

		}])

end


