class River


  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_amount
    @fishes.size()
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end





end








# How Our Ecosystem Works
# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
#
# A fish should have a name
#
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
#
# A bear should have an empty stomach ( maybe an array )
#
# A bear should be able to take a fish from the river
#
# A river should lose a fish when a bear takes a fish
#
# Extensions
# A bear could have a roar method
# A bear could have a food_count method
# A river could have a fish_count method
