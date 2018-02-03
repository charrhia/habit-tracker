class UpdateColumnUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name
  end
end
