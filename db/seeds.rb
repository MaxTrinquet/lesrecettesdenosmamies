# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Globalement pour le seed, il ne faut pas s'emmerder avec de long texte ou paragraphes
# pour un ou deux objets ok, mais il te faut surtout de la quantites
# fait des boucles avec n.times do |i| pour creer n users avec des recettes qui appartiennet a differentes familles


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
