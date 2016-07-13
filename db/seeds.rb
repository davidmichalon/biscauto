# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "jb@jb.com", first_name: "Paul", address: '25 Boulevard Gustave Roch, Nantes', expert: 1)
User.create(email: "pierre@jb.com", first_name: "Pierre", address: '30 Boulevard Gustave Roch, Nantes', expert: 1)
User.create(email: "simon@jb.com", first_name: "Simon", address: '15 Boulevard Gustave Roch, Nantes', expert: 0)
User.create(email: "jacques@jb.com", first_name: "Jacques", address: '25 Boulevard Gustave Roch, Nantes', expert: 0)
User.create(email: "joseph@jb.com", first_name: "Joseph", address: '25 Boulevard Gustave Roch, Nantes', expert: 0)
