class AddPublicTo18HoleRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :public, :boolean, default: true
  end
end
