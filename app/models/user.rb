class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family
  has_many :recipes

<<<<<<< HEAD
  # Need valition here
=======
  # ajoute des validations
>>>>>>> 4028c601b7096985c231da7f95808c9f7512760b
end
