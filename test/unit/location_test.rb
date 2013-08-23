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

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
