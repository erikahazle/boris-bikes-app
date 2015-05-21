require 'pry'
require_relative '../lib/van'

describe Van do

  let(:station) { DockStation.new }
  let(:bike) { Bike.new }
  let(:van) { Van.new(:capacity => 20)}

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

  it 'should know when it\'s full' do
    expect(van.full?).to be false
    50.times { van.pick_up_bike(Bike.new) }
    expect(van.full?).to be true
  end

  it 'should provide the list of working bikes' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break
    van.pick_up_bike(working_bike)
    van.pick_up_bike(broken_bike)
    expect(van.working_bikes).to eq([working_bike])
  end
end