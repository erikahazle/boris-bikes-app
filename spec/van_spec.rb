require_relative '../lib/van'

describe Van do

  it 'should be able to pick up' do
    van = Van.new
    bike = Bike.new
    station = DockStation.new
    station.dock(bike)
    van.pick_up_bike(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should be able to drop off a bike' do
    van = Van.new
    bike = Bike.new
    station = DockStation.new
    station.dock(bike)
    van.pick_up_bike(bike)
    van.drop_off_bike(bike)
    expect(van.bike_count).to eq 0
  end

end