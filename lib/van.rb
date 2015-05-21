class Van
  DEFAULT_CAPACITY = 10

  attr_accessor :capacity, :bikes

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def pick_up_bike(bike)
    @bikes << bike
  end

  def drop_off_bike(bike)
    @bikes.delete(bike)
  end

  def full?
    @capacity <= @bikes.count
  end
end