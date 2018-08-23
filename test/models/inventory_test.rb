# == Schema Information
#
# Table name: inventory
#
#  last_update  :datetime         not null
#  film_id      :integer          not null
#  inventory_id :integer          not null, primary key
#  store_id     :integer          not null
#
# Indexes
#
#  idx_store_id_film_id  (store_id,film_id)
#
# Foreign Keys
#
#  inventory_film_id_fkey  (film_id => film.film_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
