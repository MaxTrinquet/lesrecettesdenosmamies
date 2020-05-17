class Family < ApplicationRecord
  has_many :users
  has_many :recipes, through: :users
  has_one_attached :photo

  # ajoute des validations
end
