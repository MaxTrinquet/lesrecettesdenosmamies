class AddMinuteAndPersonToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :minute, :integer
    add_column :recipes, :person, :integer
  end
end
