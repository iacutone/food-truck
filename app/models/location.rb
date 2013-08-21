# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  truck_id   :integer
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  time       :string(255)
#

class Location < ActiveRecord::Base
  attr_accessible :truck_id, :address, :time

  belongs_to :truck
end
