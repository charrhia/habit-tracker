class RemoveNullInputs < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:inputs, :created_at, true)
    change_column_null(:inputs, :updated_at, true)
  end
end
