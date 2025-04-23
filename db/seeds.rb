# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.delete_all

Product.create!(title: 'Grenade',
  description:
    %(<p>
      <em>A tool for any job.</em>
      A grenade is a handheld bomb thrown by hand or launched mechanically.</p>),
      image_url: 'grenade.jpg',
      price: 4.99)
Product.create!(title: 'Rifle',
  description:
  %(<p>
    <em>A small</em> bomb thrown by hand or launched mechanically.</p>),
    image_url: 'rifle.jpg',
    price: 4.99)
Product.create!(title: 'Sniper',
  description:
  %(<p>
    <em>A small</em> bomb thrown by hand or launched mechanically.</p>),
    image_url: 'pistol.jpg',
    price: 4.99)
Product.create!(title: 'Pistol',
  description:
  %(<p>
    <em>A small</em> bomb thrown by hand or launched mechanically.</p>),
    image_url: 'sniper.jpg',
    price: 4.99)
