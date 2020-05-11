class Famille < ApplicationRecord
  has_one_attached :photo
  has_many :users
  has_many :recettes, through: :users
end
