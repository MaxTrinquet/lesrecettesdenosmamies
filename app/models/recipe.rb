class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :photo

  # Need valition here
end

