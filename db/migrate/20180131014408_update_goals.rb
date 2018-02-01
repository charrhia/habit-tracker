class UpdateGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :created_at, :datetime, null: false
    add_column :goals, :updated_at, :datetime, null: false
  end
end
