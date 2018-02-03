class CreateUserDataTable < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.string :goal_id, null: false

      t.timestamps
    end
  end
end
