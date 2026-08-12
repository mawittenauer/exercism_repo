class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    norm_rate = @speed * 221
    if @speed < 5
      norm_rate
    elsif @speed < 9
      norm_rate * 0.9
    elsif @speed < 10
      norm_rate * 0.8
    else
      norm_rate * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
