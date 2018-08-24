require 'test_helper'
require 'generators/slim/scaffold/scaffold_generator'

class Slim::ScaffoldGeneratorTest < Rails::Generators::TestCase
  tests Slim::ScaffoldGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
