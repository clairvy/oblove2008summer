class Nabeatsu
  AHO_DIGIT_1 = {
    1=>"い〜ち",
    2=>"に〜",
    3=>"さ〜ん",
    4=>"よ〜ん",
    5=>"ご〜",
    6=>"ろ〜く",
    7=>"な〜な",
    8=>"は〜ち",
    9=>"きゅ〜",
    0=>""
  }
 AHO_DIGIT_2 = {
    1=>"じゅ〜",
    2=>"に〜じゅ〜",
    3=>"さ〜んじゅ〜",
    4=>"よ〜んじゅ〜",
    5=>"ご〜じゅ〜",
    6=>"ろ〜くじゅ〜",
    7=>"な〜なじゅ〜",
    8=>"は〜ちじゅ〜",
    9=>"きゅ〜じゅ〜"
  }

  def say(number)

    if number % 3 == 0 then
      say_aho(number)
    elsif number.to_s[/3/] then
      say_aho(number)
    else
      number.to_s
    end
  end

  def say_aho(number)
    if number < 10
      AHO_DIGIT_1[number]
    else
      AHO_DIGIT_2[number.to_s[0,1].to_i] +
        AHO_DIGIT_1[number.to_s[1,1].to_i]
    end
  end
end
