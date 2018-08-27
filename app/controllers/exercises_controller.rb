class ExercisesController < ApplicationController
  def index
  end

  def kind_of_find
  end

  def aggregate
    @count_of_languages = Film.group(:language).count
  end

  def actor
    @count_of_actors = Actor.joins(:films).
        group(:actor).
        order('count_actor_id desc').
        count(:actor_id)
  end
end
