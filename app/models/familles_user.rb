class FamillesUser < ApplicationRecord
  belongs_to :famille
  belongs_to :user
end
