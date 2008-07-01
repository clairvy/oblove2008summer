$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))

require 'test/unit'
require 'bowling'

class BowlingTest < Test::Unit::TestCase
  def test_gatter
    pins = []
    20.times {|frame| pins[frame] = 0}
    game = Bowling.new(pins)
    assert_equal(0, game.score())
  end

  def test_open

     pins = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
             1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    game = Bowling.new(pins)
    assert_equal(20 , game.score())
  end

  def test_strike

    pins = []
    19.times {|frame| pins[frame] = 0}
    pins[0] = 10
    pins[1] = 5
    pins[2] = 3
    game = Bowling.new(pins)
    assert_equal(26, game.score)
  end

  def test_spare
    pins = []
    20.times {|frame| pins[frame] = 0}
    pins[0] = 5
    pins[1] = 5
    pins[2] = 3
    pins[3] = 2
    game = Bowling.new(pins)
    assert_equal(18, game.score)
  end

  def test_parfect
    pins = []
    12.times {|frame| pins[frame] = 10}
    game = Bowling.new(pins)
    assert_equal(300, game.score)
  end

  def test_fukuzatu
    pins = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0,
            1, 7, 3, 6, 4, 10, 2, 8, 6]
    game = Bowling.new(pins)
    assert_equal(133, game.score)
  end
end

