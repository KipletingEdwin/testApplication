# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."

Post.create(title: "Toyota", description: "Harrier")
Post.create(title: "Mazda", description: "CX5")
Post.create(title: "Subaru", description: "Forester")
Post.create(title: "Honda", description: "Fit")
Post.create(title: "Nissan", description: "Juke")



Make.create(year: 2020, plate: "KDM")
Make.create(year: 2021, plate: "KDN")
Make.create(year: 2022, plate: "KDO")
Make.create(year: 2023, plate: "KDP")
Make.create(year: 2024, plate: "KDQ")

puts "📃 Done Seeding ..."
