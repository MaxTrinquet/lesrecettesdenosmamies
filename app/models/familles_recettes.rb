class FamillesRecettes < ApplicationRecord
  belongs_to :famille
  belongs_to :recette
end
