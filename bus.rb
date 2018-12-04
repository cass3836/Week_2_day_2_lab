# require_relative("person.rb")

class Bus

attr_accessor :route, :destination, :passengers



def initialize(route, destination, passengers)
  @route = route
  @destination = destination
  @passengers = passengers
end

def drive
  return "Brum brum"
end

def count_passengers
  return passengers.length
end

def pick_up(person)
  return @passengers << person.name
end

def drop_off(passenger1)
  return @passengers.delete(passenger1)
end

def empty
  return @passengers = []
end


end
