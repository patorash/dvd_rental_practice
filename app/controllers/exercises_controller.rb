class ExercisesController < ApplicationController
  before_action do
    console
  end

  def index
  end

  def kind_of_find
  end

  def aggregate
  end

  def howto_many_data
  end

  def actor
    @count_of_actors = Actor.joins(:films).
        group(:actor).
        order('count_actor_id desc').
        count(:actor_id)
  end
end
