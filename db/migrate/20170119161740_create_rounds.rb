class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string      :course
      t.integer     :score
      t.integer     :greenshit
      t.integer     :greenstotal
      t.integer     :fwyhit
      t.integer     :fwytotal
      t.integer     :putts

      t.timestamps
    end
  end
end
