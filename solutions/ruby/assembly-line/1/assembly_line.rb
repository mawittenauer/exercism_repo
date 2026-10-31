class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    reg_rate = @speed * 221
    if @speed < 5
      reg_rate
    elsif @speed < 9
      reg_rate * 0.9
    elsif @speed < 10
      reg_rate * 0.8
    else
      reg_rate * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
