class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :category_id
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
