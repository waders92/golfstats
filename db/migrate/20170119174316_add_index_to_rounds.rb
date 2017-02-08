class AddIndexToRounds < ActiveRecord::Migration
  def change; end

  add_index :rounds, :user_id
end
