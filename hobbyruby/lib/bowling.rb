class Bowling
  def score(pins)
    unpacked = unpack(pins)

    total = 0
    is_strike = false
    each_frame(unpacked) do |f, pins|
      total += pins.inject(0){|r, i| r + i }

      if pins[0] == 10
        is_strike = true
      end
    end

#     frames = []
#     pins.each do |pin|
#       if frames.size == 0 or frames[-1].size == 2
#         frames.push([])
#       end

#       frames[-1].push(pin)
#       if pin == 10
#         frames[-1].push(0)
#       end
#     end

#     total = 0
#     strike_flg = 0
#     frames.each do |frame|
#       frame_score = 0
#       frame.each do |pin| # => 10
#         frame_score += pin
#       end
#       if frame_score == 10
        
#       end
#       total += frame_score
#     end
    
#     pins.each {|pin|
#       if strike_flg > 0
#         total += pin
#         strike_flg -= 1
#       end

#       if pin == 10
#         strike_flg = 2
#       end

#       total += pin
#     }
    return total
  end

  def unpack(pins)
    unpacked = []
    pins.each do |pin|
      unpacked << pin
      if pin == 10 && (unpacked.size % 2) == 1 && unpacked.size < 18
        unpacked << 0
      end
    end
    unpacked << 0 if unpacked.size == 20
    unpacked
  end

  def each_frame(unpaked_pins)
    10.times do |i|
      case i
      when 0..8
        yield i, unpaked_pins[i*2, 2]
      when 9
        yield i, unpaked_pins[i*2, 3]
      end
    end
  end

  def is_strike?(pins, index)
    is_first_throw = true
    pins.each_with_index do |pin, i|
      if is_first_throw && pin == 10
      else
        is_first_throw = false
      end
    end
  end
end
