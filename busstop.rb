class BusStop

attr_accessor :name, :queue

def initialize(name, queue)
  @name = name
  @queue = queue
end

def add_person(person)
  return @queue << person
end

def pick_up_from_stop

end
