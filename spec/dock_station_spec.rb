require_relative '../lib/dock_station'

describe DockStation do

  let(:station) { DockStation.new }
  let(:bike) { Bike.new }
  
  it 'should be able to accept a bike' do
    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it 'should release a bike' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end
end