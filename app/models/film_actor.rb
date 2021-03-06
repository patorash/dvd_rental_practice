# == Schema Information
#
# Table name: film_actor
#
#  last_update :datetime         not null
#  actor_id    :integer          not null
#  film_id     :integer          not null
#
# Indexes
#
#  idx_fk_film_id  (film_id)
#
# Foreign Keys
#
#  film_actor_actor_id_fkey  (actor_id => actor.actor_id) ON DELETE => restrict ON UPDATE => cascade
#  film_actor_film_id_fkey   (film_id => film.film_id) ON DELETE => restrict ON UPDATE => cascade
#

class FilmActor < ApplicationRecord
  self.table_name = 'film_actor'
  self.primary_key = nil

  belongs_to :actor
  belongs_to :film
end
