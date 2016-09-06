# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
schyler = User.create(name: "Schyler", username: "hoslersk", password: "password")
danganronpa = Videogame.create(title: "Danganronpa", studio: "Spike Chunsoft", platform: "PS Vita", avg_hours: 35, metacritic_score: 80)
no_mans_sky = Videogame.create(title: "No Man's Sky", studio: "Hello Games", platform: "PS4", avg_hours: 100, metacritic_score: 71)
psmd = Videogame.create(title: "Pokémon Super Mystery Dungeon", studio: "Nintendo", platform: "3DS", avg_hours: 100, metacritic_score: 71)
