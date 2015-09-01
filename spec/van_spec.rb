require_relative('./spec_helper')
require_relative('../lib/van')

describe Van do 

  let (:van) { Van.new }
  let (:bike) { Bike.new }

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

  end


end