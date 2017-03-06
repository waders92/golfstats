class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture
      t.string :caption
      t.string :advice

      t.timestamps
    end
  end
end
