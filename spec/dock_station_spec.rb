require_relative '../lib/dock_station'

describe DockStation do
  
  it 'should be able to accept a bike' do
    station = DockStation.new
    bike = Bike.new
    expect(station.bike_count).to eq 0

    station.dock(bike)

    expect(station.bike_count).to eq 1
  end
end