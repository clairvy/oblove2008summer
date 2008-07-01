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


  def test_say_aho1
    assert_equal("い〜ち", @nabe.say_aho(1))
  end

  def test_say_aho2
    assert_equal("に〜", @nabe.say_aho(2))
  end

  def test_say_aho12
    assert_equal("じゅ〜に〜", @nabe.say_aho(12))
  end
end
