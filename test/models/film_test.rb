# == Schema Information
#
# Table name: film
#
#  description      :text
#  fulltext         :tsvector         not null
#  last_update      :datetime         not null
#  length           :integer
#  rating           :enum             default("G")
#  release_year     :integer
#  rental_duration  :integer          default(3), not null
#  rental_rate      :decimal(4, 2)    default(4.99), not null
#  replacement_cost :decimal(5, 2)    default(19.99), not null
#  special_features :text             is an Array
#  title            :string(255)      not null
#  film_id          :integer          not null, primary key
#  language_id      :integer          not null
#
# Indexes
#
#  film_fulltext_idx   (fulltext) USING gist
#  idx_fk_language_id  (language_id)
#  idx_title           (title)
#
# Foreign Keys
#
#  film_language_id_fkey  (language_id => language.language_id) ON DELETE => restrict ON UPDATE => cascade
#

require 'test_helper'

class FilmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
