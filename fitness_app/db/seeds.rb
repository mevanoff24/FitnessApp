require 'CSV'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Workout.create(title: "Size", description: "Gain Size")
Workout.create(title: "Strength", description: "Get Stronger")
Workout.create(title: "Fat Loss", description: "Keep Muscle, Lose Fat")
Workout.create(title: "Maintaince", description: "Maintain Your Current Physique")
Workout.create(title: "Size and Strength", description: "Best of Both, Size and Strength")


CSV.foreach("public/exercise_list.csv", :headers => true ) do |row|
    Exercise.create({"name_href" => row[0], "name" => row[1], "muscle_targeted_href" => row[2], "muscle_targeted" => row[3], "rating" => row[4], "image_src" => row[5], "image_href" => row[6], "image" => row[7] })
end