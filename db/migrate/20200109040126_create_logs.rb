class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :workouts
      t.integer :time

      t.timestamps
    end
  end
end
