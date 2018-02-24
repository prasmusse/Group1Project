class DropColumn < ActiveRecord::Migration
  def change
  	remove_column :scores, :score_id
  end
end
