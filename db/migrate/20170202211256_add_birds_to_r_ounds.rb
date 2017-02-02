class AddBirdsToROunds < ActiveRecord::Migration
  def change
    add_column :rounds, :birdies, :integer
    add_column :rounds, :pars, :integer
  end
end
