# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

User.create!(email: "jb@jb.fr", password:"123456", first_name: "Paul", address: 'Saint Herblain', city:'Saint-Herblain', expert: 1, rating: 3, picture: "http://www.lataille.fr/wp-content/uploads/2015/03/Jim-Carrey-CelebHealthy_com.jpg")
User.create!(email: "pierre@jb.com", password:"123456", first_name: "Pierre", address: 'Reze 44 france', city: 'Rezé', expert: 1, rating: 3, picture: "http://blog-photocontact.vellozzi.com/wp-content/uploads/2011/10/Martin-Schoeller-Zinedine-Zidane-portrait.jpeg")
User.create!(email: "simon@jb.com", password:"123456", first_name: "Simon", address: 'sainte luce sur loire', city: 'Sainte-Luce', expert: 1, rating: 5, picture: "http://www.biografiasyvidas.com/monografia/gandhi/fotos/gandhi_mahatma.jpg")
User.create!(email: "jacques@jb.com", password:"123456", first_name: "Jacques", address: 'carquefou', city: 'Carquefou', expert: 1, rating: 4, picture: "http://img.clubic.com/07668593-photo-portrait-officiel-de-john-lennon.jpg")
User.create!(email: "joseph@jb.com", password:"123456", first_name: "Joseph", address: 'thouare 44 france', city: 'Thouaré', expert: 1, rating: 2, picture: "http://a3.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE5NDg0MDU1MTIyMTE4MTU5.jpg")
