class AddOrderToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :order, :integer
  end
end
