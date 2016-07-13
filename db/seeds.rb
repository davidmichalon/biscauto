# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

User.create!(email: "jb@jb.fr", password:"123456", first_name: "Paul", address: 'Saint Herblain', city:'Saint-Herblain', expert: 1, rating: 3)
User.create!(email: "pierre@jb.com", password:"123456", first_name: "Pierre", address: 'Reze 44 france', city: 'Rezé', expert: 1, rating: 3)
User.create!(email: "simon@jb.com", password:"123456", first_name: "Simon", address: 'sainte luce sur loire', city: 'Sainte-Luce', expert: 1, rating: 5)
User.create!(email: "jacques@jb.com", password:"123456", first_name: "Jacques", address: 'carquefou', city: 'Carquefou', expert: 1, rating: 4)
User.create!(email: "joseph@jb.com", password:"123456", first_name: "Joseph", address: 'thouare 44 france', city: 'Thouaré', expert: 1, rating: 2)
