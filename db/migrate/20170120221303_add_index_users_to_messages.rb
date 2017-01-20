class AddIndexUsersToMessages < ActiveRecord::Migration
  def change
  end

  add_index :messages, :user_id
end
