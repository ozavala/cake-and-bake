class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    category = Category.create! name: "No category"
    add_reference :products, :category, foreign_key: true, default: category.id
  end
end
