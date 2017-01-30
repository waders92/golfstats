class AddRoundIdtoComments < ActiveRecord::Migration
  def change
    add_column :comments, :round_id, :integer
  end
end
