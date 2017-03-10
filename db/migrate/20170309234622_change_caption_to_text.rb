class ChangeCaptionToText < ActiveRecord::Migration
  def self.up
    change_column :lessons, :caption, :text 
  end
end
