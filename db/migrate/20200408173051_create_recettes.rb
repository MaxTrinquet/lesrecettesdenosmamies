class CreateRecettes < ActiveRecord::Migration[5.2]
  def change
    create_table :recettes do |t|
      t.string :name
      t.text :description
      t.string :createur
      t.text :ingredient
      t.references :famille, foreign_key: true

      t.timestamps
    end
  end
end
