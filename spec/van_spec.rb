require_relative '../lib/van'

describe Van do

  it 'should be able to pick up' do
    van = Van.new
    bike = Bike.new
    station = DockStation.new
    bike.break
    station.dock(bike)
    van.pick_up_bike(bike)
    expect(van.bike_count).to eq 1
  end

end