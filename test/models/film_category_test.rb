# == Schema Information
#
# Table name: film_category
#
#  last_update :datetime         not null
#  category_id :integer          not null
#  film_id     :integer          not null
#
# Foreign Keys
#
#  film_category_category_id_fkey  (category_id => category.category_id) ON DELETE => restrict ON UPDATE => cascade
#  film_category_film_id_fkey      (film_id => film.film_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class FilmCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
