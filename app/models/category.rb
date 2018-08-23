# == Schema Information
#
# Table name: category
#
#  last_update :datetime         not null
#  name        :string(25)       not null
#  category_id :integer          not null, primary key
#

class Category < ApplicationRecord
  include DvdRentalDefinition

  has_many :film_categories
  has_many :films, through: :film_categories
end
