class AddAddressesToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :twitter_text, :string
    add_column :locations, :street1, :string
    add_column :locations, :street2, :string
  end
end
