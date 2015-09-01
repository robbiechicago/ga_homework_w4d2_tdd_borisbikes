require_relative('./spec_helper')
require_relative('../lib/van')

describe Van do 

  let (:van) { Van.new }
  let (:bike) { Bike.new }
  let (:station) { DockingStation.new }

  it 'should be empty when we build it' do
    expect(van.bike_count).to eq 0
  end

  it 'should be able to accept a bike' do
    van.pickup(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should be able to drop off a bike' do
    van.pickup(bike)
    van.dropoff(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should be able to park at docking station' do
    expect(van.van_at_station?).to be true
  end

  xit 'should be able to park at the garage' do

  end

  it 'should only pick up a bike from a station with bikes' do
    station.dock(bike)
    expect(station.bike_count).to be >= 1
  end


end