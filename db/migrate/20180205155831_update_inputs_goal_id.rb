class UpdateInputsGoalId < ActiveRecord::Migration[5.1]
  def change
    rename_column :inputs, :goal_id, :goal
  end
end
