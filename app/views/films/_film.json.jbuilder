json.extract! film, :id, :title, :description, :release_year, :language_id, :rental_duration, :rental_rate, :length, :replacement_cost, :rating, :last_update, :special_features, :fulltext, :created_at, :updated_at
json.url film_url(film, format: :json)
