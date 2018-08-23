# == Schema Information
#
# Table name: address
#
#  address     :string(50)       not null
#  address2    :string(50)
#  district    :string(20)       not null
#  last_update :datetime         not null
#  phone       :string(20)       not null
#  postal_code :string(10)
#  address_id  :integer          not null, primary key
#  city_id     :integer          not null
#
# Indexes
#
#  idx_fk_city_id  (city_id)
#
# Foreign Keys
#
#  fk_address_city  (city_id => city.city_id)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
