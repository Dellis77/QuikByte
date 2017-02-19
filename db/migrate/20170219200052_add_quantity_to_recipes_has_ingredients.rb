class AddQuantityToRecipesHasIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes_has_ingredients, :quantity, :string
  end
end
