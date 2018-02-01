class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.boolean :eat_healthy
      t.boolean :exercise
      t.boolean :read
      t.boolean :practice_coding
      t.boolean :call
      t.boolean :clean
      t.boolean :budget
    end
  end
end
