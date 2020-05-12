class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredient
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
