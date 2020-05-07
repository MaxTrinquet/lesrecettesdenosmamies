class Recette < ApplicationRecord
  belongs_to :famille
  has_one_attached :photo
  belongs_to :user
end
