require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_eat_a_fish()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @river = River.new("Colorado", [@fish1, @fish2])


    @bear.eat_a_fish(@river)
    @river.lose_a_fish

    assert_equal(1, @river.fish_population.count)
    assert_equal(1, @bear.stomach.count)
  end

  def test_roar()
    assert_equal("Roar!", @bear.roar)
  end

  def test_food_count()
    assert_equal(0, @bear.food_count)
  end
end
