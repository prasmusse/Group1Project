class Droptable < ActiveRecord::Migration
  def change
      drop_table :scores
      drop_table :users
  end
end
