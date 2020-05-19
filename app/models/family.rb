class Family < ApplicationRecord
  has_many :users
  has_many :recipes, through: :users
  has_one_attached :photo

<<<<<<< HEAD
  # Need valition here
=======
  # ajoute des validations
>>>>>>> 4028c601b7096985c231da7f95808c9f7512760b
end
