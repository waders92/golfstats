class AddRoundIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :round_id, :integer
  end
end
