class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :scoreID
      t.integer :userID
      t.integer :score
      t.integer :score_level_reached
      t.datetime :time

      t.timestamps null: false
    end
  end
end
