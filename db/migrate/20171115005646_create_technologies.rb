class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :title
      t.text :description
      t.integer :skills_level

      t.timestamps
    end
  end
end
