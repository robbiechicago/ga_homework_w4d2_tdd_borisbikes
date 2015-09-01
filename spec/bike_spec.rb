require_relative('../lib/bike')
require_relative('./spec_helper')

describe Bike do

  let (:bike) { Bike.new }

  it 'bike should not be broken when we create it' do
    expect(bike.broken?).to be false
  end

  it 'bike should be able to break' do
    bike.break

    expect(bike.broken?).to be true
  end

  it 'bike should be able to be fixed' do
    bike.break
    bike.fix

    expect(bike.broken?).to be false
  end
  
end