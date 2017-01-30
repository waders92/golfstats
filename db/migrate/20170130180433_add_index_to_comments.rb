class AddIndexToComments < ActiveRecord::Migration
  def change
  end
  add_index :comments, :user_id
end
