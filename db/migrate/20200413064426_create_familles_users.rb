class CreateFamillesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :familles_users do |t|
      t.references :famille, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
