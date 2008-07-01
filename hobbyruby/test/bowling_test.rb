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

#   def test_strike
#     game = Bowling.new
#     pins = []
#     19.times {|frame| pins[frame] = 0}
#     pins[0] = 10
#     pins[1] = 5
#     pins[2] = 3
#     assert_equal(26, game.score(pins))
#   end

  def test_unpack
    game = Bowling.new
    pins = []
    19.times {|frame| pins[frame] = 0}
    pins[0] = 10
    pins[1] = 5
    pins[2] = 3
    assert_equal([10, 0, 5, 3, 0, 0, 0, 0, 0, 0,
                   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], game.unpack(pins))
  end

  def test_unpack_gatter_and_spare
    game = Bowling.new
    pins = []
    20.times {|frame| pins[frame] = 0}
    pins[0] = 0
    pins[1] = 10    
    pins[2] = 5
    pins[3] = 3
    assert_equal([ 0, 10, 5, 3, 0, 0, 0, 0, 0, 0,
                   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], game.unpack(pins))
  end

  def test_unpack_when_three_throw_in_final_frame
    game = Bowling.new
    pins = []
    21.times {|frame| pins[frame] = 0}
    pins[18] = 10
    pins[19] = 5
    pins[20] = 3
    assert_equal([0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 3], game.unpack(pins))
  end

  def test_unpack_when_three_throw_in_final_frame_2
    game = Bowling.new
    pins = []
    21.times {|frame| pins[frame] = 0}
    pins[18] = 5
    pins[19] = 5
    pins[20] = 10
    assert_equal([0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 10], game.unpack(pins))
  end

  def test_unpack_when_three_throw_in_final_frame_3
    game = Bowling.new
    pins = []
    21.times {|frame| pins[frame] = 0}
    pins[18] = 0
    pins[19] = 10
    pins[20] = 5
    assert_equal([0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5], game.unpack(pins))
  end

  def test_each_frame
    game = Bowling.new

    unpacked = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5]
    
    game.each_frame(unpacked) do |f, pins|
      case f
      when 0..8
        assert_equal([0, 0], pins)
      when 9
        assert_equal([0, 10, 5], pins)
      end
    end
  end

  def test_is_strike
    game = Bowling.new
    pins = [10, 1, 1, 1, 1, 1, 1, 1, 1,
            1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    assert(game.is_strike?(pins, 0))
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

