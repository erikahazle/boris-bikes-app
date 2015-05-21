require_relative '../lib/van'

describe Van do

  it 'should be able to pick up a bike' do
    van = Van.new
    bike = Bike.new
    expect(van.bike_count).to eq 0
    van.pick_up_bike(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should be able to drop off a bike' do
    van = Van.new
    bike = Bike.new
    van.pick_up_bike(bike)
    expect(van.bike_count).to eq 1
    van.drop_of_bike(bike)
    expect(van.bike_count).to eq 0
  end




end