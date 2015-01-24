class AddStatusTypeToAccountings < ActiveRecord::Migration
  def change
    add_column :accountings, :status_type, :string
  end
end
