class AddUsersToRecettes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recettes, :user, foreign_key: true
  end
end
