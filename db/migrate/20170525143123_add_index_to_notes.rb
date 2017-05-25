class AddIndexToNotes < ActiveRecord::Migration
  def change
  end
  add_index :notes, :round_id
end
