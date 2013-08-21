class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.integer :truck_id
    	t.string :address

      t.timestamps
    end
  end
end
