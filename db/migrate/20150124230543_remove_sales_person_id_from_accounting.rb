class RemoveSalesPersonIdFromAccounting < ActiveRecord::Migration
  def change
    remove_column :accountings, :salesperson_id, :integer
    add_column :accountings, :employee_id, :integer
  end
end
