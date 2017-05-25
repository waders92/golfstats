class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text      :message
      t.integer   :user_id
      t.timestamps
    end
    add_index :notes, :user_id
  end
end
