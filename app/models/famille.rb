class Famille < ApplicationRecord
  has_one_attached :photo
  has_many :familles_users, dependent: :destroy
  has_many :users
end
