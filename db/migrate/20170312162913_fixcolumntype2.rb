class Fixcolumntype2 < ActiveRecord::Migration[5.0]
  def change
    change_column :recipes, :cooktime, :integer
  end
end

