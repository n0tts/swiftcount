class RemoveSalespersonFromInvoices < ActiveRecord::Migration
  def change
    remove_column :accountings, :salesperson, :string
    add_column :accountings, :salesperson_id, :integer
  end
end
