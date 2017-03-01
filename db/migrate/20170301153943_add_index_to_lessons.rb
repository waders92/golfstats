class AddIndexToLessons < ActiveRecord::Migration
  def change
  end
  add_index :lessons, :user_id
end
