$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))

require 'test/unit'
require 'bowling'

class BowlingTest < Test::Unit::TestCase
  def test_gatter
    pins = Array.new(20, 0)
    game = Bowling.new(pins)
    assert_equal(0, game.score())
  end

  def test_open
    pins = Array.new(20, 1)
    game = Bowling.new(pins)
    assert_equal(20 , game.score())
  end

  def test_strike
    pins = Array.new(19, 0)
    pins[0] = 10
    pins[1] = 5
    pins[2] = 3
    game = Bowling.new(pins)
    assert_equal(26, game.score)
  end

  def test_spare
    pins = Array.new(20, 0)
    pins[0] = 5
    pins[1] = 5
    pins[2] = 3
    pins[3] = 2
    game = Bowling.new(pins)
    assert_equal(18, game.score)
  end

  def test_parfect
    pins = Array.new(12, 10)
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

