# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  truck_id     :integer
#  address      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  time         :string(255)
#  twitter_text :string(255)
#  street1      :string(255)
#  street2      :string(255)
#  latitude     :float
#  longitude    :float
#

class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  scope :recent, lambda { where('time >= ? AND latitude IS NOT NULL', Time.now - 8.hours) }
  
	belongs_to :truck
end
