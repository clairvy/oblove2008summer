class Bowling
  def score(pins)

    total = 0
    index = 0
    10.times do |frame|
      # ���ȥ饤��
      if pins[index] == 10
        total += pins[index] + pins[index + 1] + pins[index + 2]
        index += 1

        # ���ڥ�
      elsif pins[index] + pins[index + 1] == 10
        total += pins[index] + pins[index + 1] + pins[index + 2]
        index += 2

      # ���̤ξ��

      else
        total += pins[index] + pins[index + 1]
        index += 2        
      end
    end
    
    return total
  end
end
