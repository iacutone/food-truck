class AddTruckIdToTrucks < ActiveRecord::Migration
  def change
    add_column :trucks, :truck_id, :integer
  end
end
