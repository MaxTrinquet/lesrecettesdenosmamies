class AddFamilyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :family, foreign_key: true
  end
end
