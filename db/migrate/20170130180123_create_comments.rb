class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message

      t.timestamps
    end
  end
end
