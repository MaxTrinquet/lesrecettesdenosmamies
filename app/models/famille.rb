class Famille < ApplicationRecord
  has_many :users
  has_many :recettes, dependent: :destroy
end
