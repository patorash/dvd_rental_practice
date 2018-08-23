# == Schema Information
#
# Table name: staff
#
#  active      :boolean          default(TRUE), not null
#  email       :string(50)
#  first_name  :string(45)       not null
#  last_name   :string(45)       not null
#  last_update :datetime         not null
#  password    :string(40)
#  picture     :binary
#  username    :string(16)       not null
#  address_id  :integer          not null
#  staff_id    :integer          not null, primary key
#  store_id    :integer          not null
#
# Foreign Keys
#
#  staff_address_id_fkey  (address_id => address.address_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class StaffTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
