class Family < ApplicationRecord
  has_many :users , dependent: :destroy
  has_many :recipes, through: :users , dependent: :destroy
  has_one_attached :photo

 # Need valition here
end
