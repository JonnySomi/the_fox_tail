# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

require 'open-uri'

puts "Wiping seeds"
User.destroy_all
Service.destroy_all
UserService.destroy_all
puts "Creating seeds"

file = URI.open('https://avatars.githubusercontent.com/u/96981009?v=4')
user_1 = User.new(email: "jonathan@gmail.com", password: "123123", first_name: "Jonathan", last_name: "Bra")
user_1.photo.attach(io: file, filename: 'profile.jpeg', content_type: 'image/jpeg')
user_1.save
file = URI.open('https://avatars.githubusercontent.com/u/96287389?v=4')
user_2 = User.create!(email: "nominoe@gmail.com", password: "123123", first_name: "Nominoé", last_name: "koko")
user_2.photo.attach(io: file, filename: 'profile2.jpeg', content_type: 'image/jpeg')
user_2.save
file = URI.open('https://avatars.githubusercontent.com/u/96412745?v=4')
user_3 = User.create!(email: "chloe@gmail.com", password: "123123", first_name: "Chloé", last_name: "kloolloo")
user_3.photo.attach(io: file, filename: 'profile3.jpeg', content_type: 'image/jpeg')
user_3.save
file = URI.open('https://avatars.githubusercontent.com/u/96290393?v=4')
user_4 = User.create!(email: "corentin@gmail.com", password: "123123", first_name: "Corentin", last_name: "Dino")
user_4.photo.attach(io: file, filename: 'profile4.jpeg', content_type: 'image/jpeg')
user_4.save

streaming = Service.new(name: "Netflix", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRlY2dejgtzP0TzCqGj_GGJt2g242KBrzptIZQfoHonX1gSvvqUGKkGF0uxk2dgsn_6Eo&usqp=CAU" , category: "Streaming" )
streaming.save
media = Service.new(name: "Le Figaro", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL56wFeRUr73Ig8UzmwWhYaoALsVoymVJ_-w&usqp=CAU" , category: "Media" )
media.save
video_games = Service.new(name: "Xbox Game Pass", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyPkbv8ze0rFfZ9BxK6YdMWf1iKyVF0oidGg&usqp=CAU" , category: "Video Games" )
video_games.save
music = Service.new(name: "Spotify", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBmnbqB2U3X8Md-RvAGMGtm9syclTVXqIRA&usqp=CAU" , category: "Music" )
music.save
professional = Service.new(name: "Odoo", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS-KtfhprOdt7dtWbIk3EpnQCxjo-Kg2CoQg&usqp=CAU" , category: "Professional" )
professional.save
vpn = Service.new(name: "NordVPN", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPzWyTGnmMwa1v5rlaRKqLLWhrCqGq7088Vw&usqp=CAU" , category: "VPN" )
vpn.save

UserService.create!(user_id: user_1[:id], service_id: streaming[:id], price_per_month: 14, hour_spent_per_month: 25, genre: "Comedy", start_date: Date.new(2017,3,6))
UserService.create!(user_id: user_1[:id], service_id: media[:id], price_per_month: 8, hour_spent_per_month: 10, genre: "Politic", start_date: Date.new(2020,5,15))
UserService.create!(user_id: user_1[:id], service_id: music[:id], price_per_month: 10, hour_spent_per_month: 50, genre: "Rap", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_1[:id], service_id: professional[:id], price_per_month: 12, hour_spent_per_month: 25, genre: "Management", start_date: Date.new(2017,3,6))
UserService.create!(user_id: user_2[:id], service_id: streaming[:id], price_per_month: 14, hour_spent_per_month: 25, genre: "Thriller", start_date: Date.new(2017,3,6))
UserService.create!(user_id: user_2[:id], service_id: media[:id], price_per_month: 8, hour_spent_per_month: 10, genre: "Politic", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_2[:id], service_id: music[:id], price_per_month: 10, hour_spent_per_month: 50, genre: "Hip/Hop", start_date: Date.new(2017,3,30))
UserService.create!(user_id: user_2[:id], service_id: vpn[:id], price_per_month: 5, hour_spent_per_month: 3, genre: "Vpn", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_3[:id], service_id: streaming[:id], price_per_month: 14, hour_spent_per_month: 25, genre: "Thriller", start_date: Date.new(2017,3,6))
UserService.create!(user_id: user_3[:id], service_id: media[:id], price_per_month: 8, hour_spent_per_month: 10, genre: "Politic", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_3[:id], service_id: music[:id], price_per_month: 10, hour_spent_per_month: 50, genre: "Hip/Hop", start_date: Date.new(2017,3,30))
UserService.create!(user_id: user_3[:id], service_id: video_games[:id], price_per_month: 15, hour_spent_per_month: 22, genre: "RPG", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_4[:id], service_id: streaming[:id], price_per_month: 14, hour_spent_per_month: 25, genre: "Thriller", start_date: Date.new(2017,3,6))
UserService.create!(user_id: user_4[:id], service_id: media[:id], price_per_month: 8, hour_spent_per_month: 10, genre: "Politic", start_date: Date.new(2015,8,24))
UserService.create!(user_id: user_4[:id], service_id: music[:id], price_per_month: 10, hour_spent_per_month: 50, genre: "Hip/Hop", start_date: Date.new(2017,3,30))
UserService.create!(user_id: user_4[:id], service_id: video_games[:id], price_per_month: 15, hour_spent_per_month: 22, genre: "RPG", start_date: Date.new(2015,8,24))


puts "Seeds created!"
