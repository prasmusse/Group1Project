class AddUserIdToScore < ActiveRecord::Migration
  def change
    add_reference :scores, :user, index: true, foreign_key: true
  end
end
