class CreateGoalsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :goals_tables do |t|
      t.string :name

      t.timestamps
    end
  end
end
