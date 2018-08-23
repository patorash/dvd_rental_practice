# == Schema Information
#
# Table name: customer
#
#  active      :integer
#  activebool  :boolean          default(TRUE), not null
#  create_date :date             not null
#  email       :string(50)
#  first_name  :string(45)       not null
#  last_name   :string(45)       not null
#  last_update :datetime
#  address_id  :integer          not null
#  customer_id :integer          not null, primary key
#  store_id    :integer          not null
#
# Indexes
#
#  idx_fk_address_id  (address_id)
#  idx_fk_store_id    (store_id)
#  idx_last_name      (last_name)
#
# Foreign Keys
#
#  customer_address_id_fkey  (address_id => address.address_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
