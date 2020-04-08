class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cooker
      t.text :description
      t.text :ingredient
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
