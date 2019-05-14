class AddCustomerConcernCountToConcerns < ActiveRecord::Migration[5.1]
  def change
    add_column :concerns, :customer_concerns_count, :integer
  end
end
