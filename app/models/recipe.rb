class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :photo

  # ajoute des validations
end

