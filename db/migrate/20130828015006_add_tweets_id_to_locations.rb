class AddTweetsIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :tweets_id, :integer, :limit => 8
  end
end
