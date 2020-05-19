class Family < ApplicationRecord
  has_many :users
  has_many :recipes, through: :users
  has_one_attached :photo

  # Need valition here
end
