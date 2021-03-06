# == Schema Information
#
# Table name: store
#
#  last_update      :datetime         not null
#  address_id       :integer          not null
#  manager_staff_id :integer          not null
#  store_id         :integer          not null, primary key
#
# Indexes
#
#  idx_unq_manager_staff_id  (manager_staff_id) UNIQUE
#
# Foreign Keys
#
#  store_address_id_fkey        (address_id => address.address_id) ON DELETE => restrict ON UPDATE => cascade
#  store_manager_staff_id_fkey  (manager_staff_id => staff.staff_id) ON DELETE => restrict ON UPDATE => cascade
#

class Store < ApplicationRecord
  include DvdRentalDefinition
  belongs_to :address
  belongs_to :manager_staff, class_name: 'Staff'
end
