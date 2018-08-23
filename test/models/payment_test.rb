# == Schema Information
#
# Table name: payment
#
#  amount       :decimal(5, 2)    not null
#  payment_date :datetime         not null
#  customer_id  :integer          not null
#  payment_id   :integer          not null, primary key
#  rental_id    :integer          not null
#  staff_id     :integer          not null
#
# Indexes
#
#  idx_fk_customer_id  (customer_id)
#  idx_fk_rental_id    (rental_id)
#  idx_fk_staff_id     (staff_id)
#
# Foreign Keys
#
#  payment_customer_id_fkey  (customer_id => customer.customer_id) ON DELETE => restrict ON UPDATE => cascade
#  payment_rental_id_fkey    (rental_id => rental.rental_id) ON DELETE => nullify ON UPDATE => cascade
#  payment_staff_id_fkey     (staff_id => staff.staff_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
