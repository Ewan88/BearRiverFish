require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @river = River.new("Colorado", [@fish1, @fish2])
  end

  def test_lose_a_fish()
    @river.lose_a_fish
    assert_equal(1, @river.fish_population.count)
  end

  def test_fish_count()
    assert_equal(2, @river.fish_count)
  end
end
