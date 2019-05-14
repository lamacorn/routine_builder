class AddRoutineCountToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :routines_count, :integer
  end
end
