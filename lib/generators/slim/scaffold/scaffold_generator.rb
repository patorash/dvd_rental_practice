require "rails/generators/erb/scaffold/scaffold_generator"
class Slim::ScaffoldGenerator < Erb::Generators::ScaffoldGenerator
  source_root File.expand_path('../templates', __FILE__)

  protected
  def handler
    :slim
  end
end