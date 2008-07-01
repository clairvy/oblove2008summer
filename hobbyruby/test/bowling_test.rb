$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))

require 'test/unit'
require 'bowling'

class BowlingTest < Test::Unit::TestCase
  def test_gatter
    game = Bowling.new
    pins = []
    20.times {|frame| pins[frame] = 0}
    assert_equal(0, game.score(pins))
  end

  def test_open
     game = Bowling.new
     pins = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
             1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    assert_equal(20 , game.score(pins))
  end

  def test_strike
    game = Bowling.new
    pins = []
    18.times {|frame| pins[frame] = 0}
    pins[0] = 10
    pins[1] = 5
    pins[2] = 3
    assert_equal(26, game.score(pins))
  end

#   def test_spare
#     game = Bowling.new
#     pins = []
#     20.times {|frame| pins[frame] = 0}
#     pins[0] = 5
#     pins[1] = 5
#     pins[2] = 3
#     pins[3] = 2
#     assert_equal(18, game.score(pins))
#   end
end

