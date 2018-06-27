class AddOrderToTechnologies < ActiveRecord::Migration[5.1]
  def change
    add_column :technologies, :order, :integer
  end
end
