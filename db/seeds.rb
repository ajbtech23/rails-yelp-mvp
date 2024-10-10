# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = []

restaurants << Restaurant.create(name: "Tava", address: "23 Kingsland Road", phone_number: "07510-561-203", category: "turkish")
restaurants << Restaurant.create(name: "Dishoom", address: "187 Alecia Road", phone_number: "07455-962-732", category: "indian")
restaurants << Restaurant.create(name: "Yi Ban", address: "Opposite moxy hotel", phone_number: "0775-221-388", category: "chinese")
restaurants << Restaurant.create(name: "Le Hain", address: "37 Rue de Canelle", phone_number: "404020420402042", category: "french")
restaurants << Restaurant.create(name: "Sticks and Sushi", address: "Tokyo Haneda Airport", phone_number: "24420420524", category: "japanese")

counter = 0

while counter < 5
  Review.create(rating: counter, content: "adfadgdagadga", restaurant_id: restaurants[counter].id)
  counter = counter + 1
end
