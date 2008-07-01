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
  
 AHO_DIGIT_10 = {
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
  
  AHO_KETA = {
    0=>"",
    1=>"",
    2=>"じゅ〜",
    3=>"ひゃ〜く",
    4=>"せ〜ん",
    5=>"ま〜ん"
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
    return "ぜ〜ろ" if number == 0
    
    cnt = 0
    ret = ""
    number.to_s.length.downto(1) {|i|

      if number.to_s[cnt, 1].to_i != 1
        if i == 3 && number.to_s[cnt, 1].to_i == 6
          ret += "ろ〜っ"
        elsif (i == 3 || i == 4) && number.to_s[cnt, 1].to_i == 8
          ret += "は〜っ"
        else
          ret += AHO_DIGIT_1[number.to_s[cnt ,1].to_i]          
        end
      elsif i == 1 or i == 5
        ret += AHO_DIGIT_1[number.to_s[cnt, 1].to_i]
      end

      if i == 3 && number.to_s[cnt, 1].to_i == 3
        ret += "びゃ〜く"
      elsif i == 3 && (number.to_s[cnt, 1].to_i == 6 || number.to_s[cnt, 1].to_i == 8)
        ret += "ぴゃ〜く"
      elsif i == 4 && number.to_s[cnt, 1].to_i == 3
        ret += "ぜ〜ん"
      elsif number.to_s[cnt, 1].to_i != 0
        ret += AHO_KETA[i]
      end
      
      cnt += 1
    }

    ret = "ま〜いなす" + ret if number < 0
    
    return ret

    #if number < 10
    #  AHO_DIGIT_1[number]
    #else
    #  AHO_DIGIT_10[number.to_s[0,1].to_i] +
    #    AHO_DIGIT_1[number.to_s[1,1].to_i]
    #end
  end
end
