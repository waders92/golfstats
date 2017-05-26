class AddPublicToNineHoleRounds < ActiveRecord::Migration
  def change
    add_column :nineholerounds, :public, :boolean, default: true
  end
end
