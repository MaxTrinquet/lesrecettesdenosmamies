class Createfamilyrelation < ActiveRecord::Migration[5.2]
  def change
    create_table :familles_recettes do |t|
      t.references :famille, foreign_key: true
      t.references :recette, foreign_key: true
      t.timestamps
    end
  end
end
