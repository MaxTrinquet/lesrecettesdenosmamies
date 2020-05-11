class Deletefamilly < ActiveRecord::Migration[5.2]
  def change
    remove_column :recettes, :famille
  end
end
