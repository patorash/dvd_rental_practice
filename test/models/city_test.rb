# == Schema Information
#
# Table name: city
#
#  city        :string(50)       not null
#  last_update :datetime         not null
#  city_id     :integer          not null, primary key
#  country_id  :integer          not null
#
# Indexes
#
#  idx_fk_country_id  (country_id)
#
# Foreign Keys
#
#  fk_city  (country_id => country.country_id)
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
