class RenameGoals < ActiveRecord::Migration[5.1]
  def change
    rename_table :goals_tables, :goals
  end
end
