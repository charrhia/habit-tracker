class UpdateGoalsWithUsersRename < ActiveRecord::Migration[5.1]
  def change
    rename_column :goals, :user, :user_id
  end
end
