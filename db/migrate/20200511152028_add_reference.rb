class Addreference < ActiveRecord::Migration[5.2]
  def change
    add_reference :recettes, :famille, foreign_key: true
  end
end
