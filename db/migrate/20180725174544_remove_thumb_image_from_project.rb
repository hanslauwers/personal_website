class RemoveThumbImageFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :thumb_image, :text
  end
end
