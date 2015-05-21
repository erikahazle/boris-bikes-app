class Van

def initialize
  @bikes = []
end

def bike_count
  @bikes.count
end

def pick_up_bike bike
  @bikes << bike
end

def drop_of_bike bike
  @bikes.delete(bike)
end

end