class AddItemsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :greens, :integer
    add_column :rounds, :greenstotal, :integer
    add_column :rounds, :fwys, :integer
    add_column :rounds, :fwystotal, :integer
    add_column :rounds, :putts, :integer
  end
end
