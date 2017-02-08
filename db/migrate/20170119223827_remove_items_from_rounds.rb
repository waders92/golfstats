class RemoveItemsFromRounds < ActiveRecord::Migration
  def change
    remove_column :rounds, :greenshit
    remove_column :rounds, :greenstotal
    remove_column :rounds, :fwyhit
    remove_column :rounds, :fwytotal
    remove_column :rounds, :putts
  end
end
