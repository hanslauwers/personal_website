class ChangeSkillsLevelDataType < ActiveRecord::Migration[5.1]
  def self.up
    change_column :technologies, :skills_level, :float
  end

  def self.down
    change_column :technologies, :skills_level, :integer
  end
end
