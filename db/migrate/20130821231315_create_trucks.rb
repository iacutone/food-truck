class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
    	t.string :name 
    	t.string :twitter

      t.timestamps
    end
  end
end
