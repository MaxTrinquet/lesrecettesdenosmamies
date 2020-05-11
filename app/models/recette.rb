class Recette < ApplicationRecord
  has_one_attached :photo
  belongs_to :user, optional: true
  # belongs_to :famille
end
