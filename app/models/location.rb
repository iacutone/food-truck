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
  attr_accessible :truck_id, :address, :time, :twitter_text, :street1, :street2, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  scope :recent, lambda { where('time >= ?', Time.now - 12.hours).uniq_by(&:truck_id) }
  
	belongs_to :truck
end
