# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Drop database"

Famille.destroy_all
User.destroy_all
Recette.destroy_all

puts "Creating Famille"

auvert = Famille.new(name: "Auvert")
trinquet = Famille.new(name: "Trinquet")
auvert.save
trinquet.save
puts "Creating Recettes"

tarte_aux_poires = Recette.new(
  name: "tarte aux poires",
  description: "Préchauffez votre four à 220°
  Mélangez dans un saladier le sucre et les oeufs, puis ajoutez la farine et la poudre d'amande. Ajouter le beurre et mélangez.
  Étalez la pâte feuilletée dans un moule creux à bord haut, genre moule à manqué, ou à défaut dans un moule à tarte, mais le moule a manqué donnera davantage d'épaisseur à la tarte.
  Versez le contenu sur la pâte feuilletée.
  Épluchez les poires, coupez-les en quartiers et déposez-les sur la pâte feuilletée en formant une couronne.
  Faites cuire 30 minutes. Démoulez la tarte si comme moi vous l'avez faite dans un moule en silicone, sinon laissez-la dans le moule.",
  createur: "Sylvie",
  ingredient: "1 pâte feuilletée
              100 g de beurre
              150 g de sucre
              2 oeufs
              30 g de farine
              90 g de poudre d'amande
              3 ou 4 poires",
  )

tarte_aux_poires.famille = auvert
tarte_aux_poires.save

gateau_chocolat = Recette.new(
  name: "gateau chocolat",
  description: "Préchauffez votre four à 180°C (thermostat 6).
Dans une casserole, faites fondre le chocolat et le beurre coupé en morceaux à feu très doux.
  Dans un saladier, ajoutez le sucre, les oeufs, la farine. Mélangez. sinon laissez-la dans le moule.
  Ajoutez le mélange chocolat/beurre. Mélangez bien.Beurrez et farinez votre moule puis y versez la pâte à gâteau.
  Faites cuire au four environ 20 minutes.
  A la sortie du four le gâteau ne paraît pas assez cuit. C'est normal, laissez-le refroidir puis démoulez- le.",
  createur: "Valerie",
  ingredient: "200g de chocolat noir
              100 g de beurre
              150 g de sucre
              3 oeufs
              30 g de farine")

gateau_chocolat.famille = trinquet
gateau_chocolat.save

puts "end of the seeding"

