require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Yogi", "Grizzly")
  @fish_1 = Fish.new("Fish_1")
  @fish_2 = Fish.new("Fish_2")
  @fish_3 = Fish.new("Fish_3")
  @river = River.new("River", [@fish_1, @fish_2, @fish_3])
end

def test_bear_has_name
  assert_equal("Yogi", @bear.name())
end

def test_bear_has_type
  assert_equal("Grizzly", @bear.type())
end

def test_bear_has_empty_stomach
  assert_equal(0, @bear.fish_count())
end

def test_bear_can_take_fish
  @bear.add_fish(@fish)
  assert_equal(1, @bear.fish_count())
end

def test_bear_can_eat_fish_from_river
  @bear.eat_fish(@fish_1, @river)
  assert_equal(1, @bear.fish_count())
  assert_equal(2, @river.fish_amount())
end

def test_bear_can_roar
  assert_equal("Roar!!!", @bear.roar())
end

def test_food_count
  @bear.food_count()
  
end

end
