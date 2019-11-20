# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  puts "Cleaning database..."
  Vacancy.destroy_all

  puts "Creating vacancies..."
  vacancy1 = Vacancy.create(title: "TA", school: "Le Wagon", salary: 500, description: "Teaching Assistant role at Le Wagon Coding Bootcamp")
  vacancy2 = Vacancy.create(title: "Biology Teacher", school: "London Bridge Primary", salary: 30000, description: "Open teaching position for a biology teacher at London Bridge Primary")

  puts "Finished!"
