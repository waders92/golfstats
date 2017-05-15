class CreateNineholerounds < ActiveRecord::Migration
  def change
    create_table :nineholerounds do |t|
      t.string      :course
      t.integer     :score
      t.integer     :greenshit
      t.integer     :fwys
      t.integer     :fwystotal
      t.integer     :putts
      t.integer    :birdies
      t.integer     :pars
      t.integer     :user_id
      t.timestamps
    end
    add_index :nineholerounds, :user_id
  end
end
