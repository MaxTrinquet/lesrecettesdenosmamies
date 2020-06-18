class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ingredients
  has_one_attached :photo
  has_many :comments, dependent: :destroy

  # Need valition here
end

