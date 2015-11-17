require_relative '../page-objects/home_page'
require_relative '../page-objects/results_page'

# initialise all pageobjects
Before do
  @test_world = TestWorld.new
  @home = HomePage.new
  @results = ResultsPage.new
end

After do
  @test_world.clean
end
