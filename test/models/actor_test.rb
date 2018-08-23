# == Schema Information
#
# Table name: actor
#
#  first_name  :string(45)       not null
#  last_name   :string(45)       not null
#  last_update :datetime         not null
#  actor_id    :integer          not null, primary key
#
# Indexes
#
#  idx_actor_last_name  (last_name)
#

require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
