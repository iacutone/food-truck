class AddTweetIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :tweet_id, :string
  end
end
