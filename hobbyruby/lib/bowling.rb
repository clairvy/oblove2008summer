class Bowling
  def score(pins)

    total = 0
    index = 0
    10.times do |frame|
      # ストライク
      if pins[index] == 10
        total += pins[index] + pins[index + 1] + pins[index + 2]
        index += 1

        # スペア
      elsif pins[index] + pins[index + 1] == 10
        total += pins[index] + pins[index + 1] + pins[index + 2]
        index += 2

      # 普通の場合

      else
        total += pins[index] + pins[index + 1]
        index += 2        
      end
    end
    
    return total
  end
end
