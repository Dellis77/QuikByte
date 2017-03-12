class Changecolumntype < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :preptime, :integer
  end
end
