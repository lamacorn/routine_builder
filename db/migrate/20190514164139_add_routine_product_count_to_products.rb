class AddRoutineProductCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :routine_products_count, :integer
  end
end
