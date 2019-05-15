require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Fish_1")
    @fish_2 = Fish.new("Fish_2")
    @fish_3 = Fish.new("Fish_3")
    @river = River.new("River", [@fish_1, @fish_2, @fish_3])≥÷
  end

  def test_fish_amount
   assert_equal(3, @river.fish_amount())
  end


  def test_remove_fish_from_river
    @river.remove_fish(@fish_1)
    assert_equal(2, @river.fish_amount())
  end

end
