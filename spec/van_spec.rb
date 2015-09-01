require_relative('./spec_helper')
require_relative('../lib/van')
require_relative('../lib/bike')
require_relative('../lib/docking_station')

describe Van do 

  def five_bikes van 
    5.times {
      van.park_at_station
      van.pickup(bike) 
    }
  end

  let (:van) { Van.new }
  let (:bike) { Bike.new }
  let (:station) { DockingStation.new }

  it 'should be empty when we build it' do
    expect(van.van_bike_count).to eq 0
  end

  it 'should be able to pick up a bike' do
    van.park_at_station
    station.dock(bike)
    van.pickup(bike)
    expect(van.van_bike_count).to eq 1
  end

  it 'should be able to pick up multiple bikes' do
    five_bikes van
    expect(van.van_bike_count).to eq 5
  end

  it 'should be able to drop off a bike' do
    van.park_at_station
    van.pickup(bike)
    van.dropoff(bike)
    expect(van.van_bike_count).to eq 0
  end

  it 'should be able to park at docking station' do
    van.park_at_station
    expect(van.van_at_station?).to be true
  end

  xit 'should be able to park at the garage' do
    expect(van.pickup(bike)).to 
  end

  it 'should only be able to pick up broken bikes' do
    bike = Bike.new
    bike2 = Bike.new
    bike.break
    van.park_at_station
    van.pickup(bike)
    expect(van.van_bike_count).to eq 1
  end

  it 'should only be able to pick up a bike if it is at a station' do
    expect { van.pickup(bike) } .to raise_error RuntimeError
  end

end



















