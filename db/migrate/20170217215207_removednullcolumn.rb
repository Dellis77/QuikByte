class Removednullcolumn < ActiveRecord::Migration[5.0]
  def change
  	change_column :recipes, :videourl, :string, :null => true
  end
end
