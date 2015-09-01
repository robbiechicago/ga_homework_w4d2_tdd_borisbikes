class Van

  def initialize
    @station_bikes = []
    @van_bikes = []
    @at_station = false
  end

  def station_bike_count
    @station_bikes.count
  end

  def van_bike_count
    @van_bikes.count
  end

  def van_at_station?
    @at_station
  end

  def park_at_station
    @at_station = true
  end

  def pickup bike
    raise 'not currently at a docking station' if van_at_station? == false
    if bike.broken = true
      @van_bikes << (bike)
    end
  end

  def dropoff bike
    @van_bikes.delete(bike)
  end

end