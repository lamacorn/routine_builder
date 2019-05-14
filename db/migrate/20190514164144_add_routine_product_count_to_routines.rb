class AddRoutineProductCountToRoutines < ActiveRecord::Migration[5.1]
  def change
    add_column :routines, :routine_products_count, :integer
  end
end
