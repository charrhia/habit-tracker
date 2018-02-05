class AddInputsTableAgain < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.belongs_to :goal, null: false
      t.date :date

      t.timestamps
    end
  end
end
