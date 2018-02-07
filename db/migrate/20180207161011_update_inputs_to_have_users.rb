class UpdateInputsToHaveUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :inputs, :user_id, :bigint, null: false
  end
end
