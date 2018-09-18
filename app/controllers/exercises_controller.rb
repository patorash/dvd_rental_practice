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

  def handle_many_data
  end

  def handle_join
  end

  def actor
    @count_of_actors = Actor.joins(:films).
        group(:actor_id).
        order('count_actor_id desc').
        count(:actor_id)
  end
end
