class AddCustomerConcernCountToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customer_concerns_count, :integer
  end
end
