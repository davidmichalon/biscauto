# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create!(email: "coconutsdelanoche@yahoo.com", password:"123456", first_name: "Paul", address: 'Saint Herblain', city:'Saint-Herblain', expert: 1, rating: 3, picture: "http://www.lataille.fr/wp-content/uploads/2015/03/Jim-Carrey-CelebHealthy_com.jpg", description: "Moi mon truc c'est les voitures anciennes. Excalibur, De-Dion Bouton n'ont pas de secret pour moi")
User.create!(email: "pierre@jb.com", password:"123456", first_name: "Pierre", address: 'Reze 44 france', city: 'Rezé', expert: 1, rating: 3, picture: "http://blog-photocontact.vellozzi.com/wp-content/uploads/2011/10/Martin-Schoeller-Zinedine-Zidane-portrait.jpeg", description: "Expert en voitures de sport, Porsche, Ferrari, Maserati... Plusieurs annees d'experience dans le monde de la course auto")
User.create!(email: "simon@jb.com", password:"123456", first_name: "Simon", address: 'sainte luce sur loire', city: 'Sainte-Luce', expert: 1, rating: 5, picture: "http://www.biografiasyvidas.com/monografia/gandhi/fotos/gandhi_mahatma.jpg", description: "Plutot porté moto, mais je touche ma bille aussi en 4x4")
User.create!(email: "jacques@jb.com", password:"123456", first_name: "Jacques", address: 'carquefou', city: 'Carquefou', expert: 1, rating: 4, picture: "http://img.clubic.com/07668593-photo-portrait-officiel-de-john-lennon.jpg", description: "J'ai travaille 20 ans dans un garage Citroen, et je connais bien les petites voitures")
User.create!(email: "joseph@jb.com", password:"123456", first_name: "Joseph", address: 'thouare 44 france', city: 'Thouaré', expert: 1, rating: 2, picture: "http://a3.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTE5NDg0MDU1MTIyMTE4MTU5.jpg", description: "Expert en voitures allemandes (BMW, Mercedes, Audi, VW, Opel...)")
User.create!(email: "thomas@jb.com", password:"123456", first_name: "Carlos", address: 'Orvault 44 france', city: 'Orvault', expert: 1, rating: 5, picture: "http://www.zicabloc.com/wp-content/uploads/2011/01/carlos-chanteur.jpg", description: "Je connais tout sur les Renault")
User.create!(email: "michel@jb.com", password:"123456", first_name: "Michel", address: 'Vertou 44 france', city: 'Vertou', expert: 1, rating: 4, picture: "http://cdn.static01.nicematin.com/media/npo/mobile_1440w/2015/12/a1-8968782-e1451142953282.jpg", description: "Bonnes competences pour les utilitaires et les camions")
User.create!(email: "claude@jb.com", password:"123456", first_name: "Claude", address: 'bouguenais 44 france', city: 'Bouguenais', expert: 1, rating: 2, picture: "https://s-media-cache-ak0.pinimg.com/originals/fc/09/8b/fc098b65311bd59895d62400eed5f82f.jpg", description: "pour moi les motos n'ont aucun secret")
