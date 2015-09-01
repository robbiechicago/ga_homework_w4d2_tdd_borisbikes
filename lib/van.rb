class Van

  def initialize
    @bikes = []
    @at_station = false
  end

  def bike_count
    @bikes.count
  end

  def pickup bike
    @bikes << (bike)
  end

  def dropoff bike
    @bikes.delete(bike)
  end

  def van_at_station? 
    @at_station = true
  end

end