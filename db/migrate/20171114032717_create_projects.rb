class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :link_to_code
      t.string :link_to_site

      t.timestamps
    end
  end
end
