# == Schema Information
#
# Table name: country
#
#  country     :string(50)       not null
#  last_update :datetime         not null
#  country_id  :integer          not null, primary key
#

class Country < ApplicationRecord
  include DvdRentalDefinition
  has_many :cities
end
