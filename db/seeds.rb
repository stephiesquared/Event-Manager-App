# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Event.create(title: "Temp Event 1", category: "inside", description: "A temp event at the UCCS library.", location: "Kraemer Family Library", latitude: 38.89269, longitude: -104.80069)

Event.create(title: "Temp Event 2", category: "inside", description: "A temp event at the UC Denver library.", location: "Auraria Library", latitude: 39.74335, longitude: -105.00293)

Event.create(title: "Temp Event 3", category: "inside", description: "A temp event at the UC Boulder library.", location: "Norlin Library", latitude: 40.00871, longitude: -105.27078)