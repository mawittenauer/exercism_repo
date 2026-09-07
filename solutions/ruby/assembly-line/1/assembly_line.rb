class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    perfect_rate = @speed * 221
    if @speed < 5
      perfect_rate
    elsif @speed < 9
      perfect_rate * 0.9
    elsif @speed < 10
      perfect_rate * 0.8
    else
      perfect_rate * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
