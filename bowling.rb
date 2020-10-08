class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def roll_many(times, pins)
    times.times { roll(pins) }
  end

  def score
    frames = @rolls.each_slice(2).to_a
    frames.each_with_index.map do |frame, i|
      if spare?(frame)
        @rolls << frames[i + 1][0]
      end
    end
    @rolls.reduce(:+)
  end

  def spare?(frame)
    frame.sum == 10
  end
end
