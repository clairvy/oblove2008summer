$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))
require 'test/unit'
require 'nabeatsu'
class NabeatsuTest < Test::Unit::TestCase

  def setup
    @nabe = Nabeatsu.new
  end

  def test_say
    assert_equal("1",@nabe.say(1))
  end

  def test_say2
    assert_equal("2",@nabe.say(2))
  end

  def test_say3
    assert_equal("さ〜ん", @nabe.say(3))
  end

  def test_say6
    assert_equal("ろ〜く", @nabe.say(6))
  end

  def test_say9
    assert_equal("きゅ〜", @nabe.say(9))
  end

  def test_say12
    assert_equal("じゅ〜に〜", @nabe.say(12))
  end

  def test_say13
    assert_equal("じゅ〜さ〜ん", @nabe.say(13))
  end

  def test_say30
    assert_equal("さ〜んじゅ〜", @nabe.say(30))
  end

  def test_say103
    assert_equal("ひゃ〜くさ〜ん", @nabe.say(103))
  end

  def test_say110
    assert_equal("110", @nabe.say(110))
  end
  
  def test_say113
    assert_equal("ひゃ〜くじゅ〜さ〜ん", @nabe.say(113))
  end

  def test_say213
    assert_equal("に〜ひゃ〜くじゅ〜さ〜ん", @nabe.say(213))
  end

  def test_say300
    assert_equal("さ〜んびゃ〜く", @nabe.say(300))
  end

  def test_say600
    assert_equal("ろ〜っぴゃ〜く", @nabe.say(600))
  end

  def test_say803
    assert_equal("は〜っぴゃ〜くさ〜ん", @nabe.say(803))
  end

  def test_say1000
    assert_equal("1000", @nabe.say(1000))
  end

  def test_say1030
    assert_equal("せ〜んさ〜んじゅ〜", @nabe.say(1030))
  end

  def test_say3000
    assert_equal("さ〜んぜ〜ん", @nabe.say(3000))
  end

  def test_say8003
    assert_equal("は〜っせ〜んさ〜ん", @nabe.say(8003))
  end

  def test_say0
    assert_equal("ぜ〜ろ", @nabe.say(0))
  end

  def test_say_minus0
    assert_equal("-1", @nabe.say(-1))
  end

  def test_say_minus3
    assert_equal("ま〜いなすさ〜ん", @nabe.say(-3))
  end

  def test_say_minus103
    assert_equal("ま〜いなすひゃ〜くさ〜ん", @nabe.say(-103))
  end

  
  def test_say_aho1
    assert_equal("い〜ち", @nabe.say_aho(1))
  end

  def test_say_aho2
    assert_equal("に〜", @nabe.say_aho(2))
  end

  def test_say_aho12
    assert_equal("じゅ〜に〜", @nabe.say_aho(12))
  end

  def test_say_aho_0
    assert_equal("ぜ〜ろ", @nabe.say_aho(0))
  end
  
  def test_say_aho_minus_1
    assert_equal("ま〜いなすい〜ち", @nabe.say_aho(-1))
  end
end
