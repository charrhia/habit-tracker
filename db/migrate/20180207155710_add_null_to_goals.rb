class AddNullToGoals < ActiveRecord::Migration[5.1]
  def change
    change_column :goals, :user_id, :bigint, null: false
  end
end
