class DeletefamilleId < ActiveRecord::Migration[5.2]
  def change
    remove_column :recettes, :famille_id
  end
end
