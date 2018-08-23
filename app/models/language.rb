# == Schema Information
#
# Table name: language
#
#  last_update :datetime         not null
#  name        :string(20)       not null
#  language_id :integer          not null, primary key
#

class Language < ApplicationRecord
  include DvdRentalDefinition
end
