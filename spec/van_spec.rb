require_relative '../lib/van'

describe Van do

  let(:station) { DockStation.new(:capacity => 20) }
  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 10)}

  it 'should be able to pick up' do
    station.dock(bike)
    van.pick_up_bike(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should be able to drop off a bike' do
    station.dock(bike)
    van.pick_up_bike(bike)
    van.drop_off_bike(bike)
    expect(van.bike_count).to eq 0
  end

end