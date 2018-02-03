class UpdateInputs < ActiveRecord::Migration[5.1]
  def change
    add_column :inputs, :date, :date
  end
end
