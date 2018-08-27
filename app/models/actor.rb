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

class Actor < ApplicationRecord
  include DvdRentalDefinition
  has_many :film_actors, primary_key: nil
  has_many :films, through: :film_actors
end
