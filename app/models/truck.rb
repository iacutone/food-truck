# == Schema Information
#
# Table name: trucks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  twitter    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Truck < ActiveRecord::Base
  attr_accessible :name, :twitter

  has_one :location
end
