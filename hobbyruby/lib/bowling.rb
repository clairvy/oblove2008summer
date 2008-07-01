class Bowling

  FRAME_SIZE = 10

  def initialize(pins)
    @pins = pins
  end

  def score()
    total = 0
    index = 0
    FRAME_SIZE.times do |frame|
      if strike?(index)
        total += 10 + @pins[index + 1] + @pins[index + 2]
        index += 1
      elsif spare?(index)
        total += 10 + @pins[index + 2]
        index += 2
      else
        total += @pins[index] + @pins[index + 1]
        index += 2
      end
    end

    return total
  end

  def strike?(index)
    @pins[index] == 10
  end

  def spare?(index)
    @pins[index] + @pins[index + 1] == 10
  end
end
