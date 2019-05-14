class CreateRoutineProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :routine_products do |t|
      t.integer :routine_id
      t.integer :product_id
      t.text :special_note
      t.string :time_of_day
      t.string :use_frequency
      t.integer :primary_concern_id

      t.timestamps
    end
  end
end
