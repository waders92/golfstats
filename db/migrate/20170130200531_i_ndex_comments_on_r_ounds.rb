class INdexCommentsOnROunds < ActiveRecord::Migration
  def change; end
  add_index :comments, :round_id
end
