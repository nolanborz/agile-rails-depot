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
      A baseball-sized bomb which can be thrown by hand or launched mechanically.</p>),
      image_url: 'grenade.jpg',
      price: 4.99)
Product.create!(title: 'Rifle',
  description:
  %(<p>
    A dynamic, fully-automatic rifle effective at mid-range distances.</p>),
    image_url: 'rifle.jpg',
    price: 29.99)
Product.create!(title: 'Pistol',
  description:
  %(<p>
    A gun which can be handled and shot with one hand, ideal for close quarter combat.</p>),
    image_url: 'pistol.jpg',
    price: 19.99)
Product.create!(title: 'Sniper',
  description:
  %(<p>
    A deadly accurate rifle capable of hitting targets at long ranges.</p>),
    image_url: 'sniper.jpg',
    price: 89.99)
