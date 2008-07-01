class Bowling
  def score(pins)

    frames = []
    pins.each do |pin|
      if frames.size == 0 or frames[-1].size == 2
        frames.push([])
      end

      frames[-1].push(pin)
      if pin == 10
        frames[-1].push(0)
      end
    end

    total = 0
    strike_flg = 0
    frames.each do |frame|
      frame_score = 0
      frame.each do |pin| # => 10
        frame_score += pin
      end
      if frame_score == 10
        
      end
      total += frame_score
    end
    
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
end
