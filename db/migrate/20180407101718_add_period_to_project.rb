class AddPeriodToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :period, :string
  end
end
