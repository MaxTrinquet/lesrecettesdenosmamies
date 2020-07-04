class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ingredients, dependent: :destroy
  has_one_attached :photo
  has_many :comments, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged
end

