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

class FilmCategory < ApplicationRecord
  self.table_name = 'film_category'
  self.primary_key = nil

  belongs_to :category
  belongs_to :film
end
