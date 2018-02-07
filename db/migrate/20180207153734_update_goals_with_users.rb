class UpdateGoalsWithUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :user, :bigint
  end
end
