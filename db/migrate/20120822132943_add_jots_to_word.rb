class AddJotsToWord < ActiveRecord::Migration
  def change
    change_table :words do |t|
      t.integer :jots  
    end  
  end
end
