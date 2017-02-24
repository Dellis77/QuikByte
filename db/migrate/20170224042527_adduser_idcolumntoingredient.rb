class AdduserIdcolumntoingredient < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :user_id, :integer
  end
end
