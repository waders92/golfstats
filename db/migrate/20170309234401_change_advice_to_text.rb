class ChangeAdviceToText < ActiveRecord::Migration
  def self.up
    change_column :lessons, :advice, :text    
  end
end
