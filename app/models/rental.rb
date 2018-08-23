# == Schema Information
#
# Table name: rental
#
#  last_update  :datetime         not null
#  rental_date  :datetime         not null
#  return_date  :datetime
#  customer_id  :integer          not null
#  inventory_id :integer          not null
#  rental_id    :integer          not null, primary key
#  staff_id     :integer          not null
#
# Indexes
#
#  idx_fk_inventory_id                                  (inventory_id)
#  idx_unq_rental_rental_date_inventory_id_customer_id  (rental_date,inventory_id,customer_id) UNIQUE
#
# Foreign Keys
#
#  rental_customer_id_fkey   (customer_id => customer.customer_id) ON DELETE => restrict ON UPDATE => cascade
#  rental_inventory_id_fkey  (inventory_id => inventory.inventory_id) ON DELETE => restrict ON UPDATE => cascade
#  rental_staff_id_key       (staff_id => staff.staff_id)
#

class Rental < ApplicationRecord
  include DvdRentalDefinition
  belongs_to :inventory
  belongs_to :staff

  has_many :payments
end
