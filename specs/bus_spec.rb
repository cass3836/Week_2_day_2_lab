require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")


class TestBus < MiniTest::Test

def setup
  @bus = Bus.new(22, "Glasgow", ["Cassia"])
  @bus2 = Bus.new(22, "Glasgow", [])

  @person = Person.new("Conor", 84)
  @person2 = Person.new("Chris", 24)


end

def test_get_route
  assert_equal(22, @bus.route)
end

def test_drive
  # @bus.drive
  assert_equal("Brum brum", @bus.drive)
end

def test_count_passengers__not_present
  assert_equal(0, @bus2.count_passengers)
end

# def test_count_passengers__present
#   assert_equal(2, @bus.count_passengers)
# end

#
# def test_pick_up
#   assert_equal(3, @bus)
# end


def test_pick_up
  @bus.pick_up(@person)
  assert_equal(2, @bus.count_passengers)
end

def test_drop_off
  @bus.drop_off("Cassia")
  assert_equal(0, @bus.count_passengers)
end

def test_pick_up__arr
  assert_equal(["Cassia", "Conor"], @bus.pick_up(@person))
end

def test_empty__arr
  assert_equal([], @bus.empty)
end

def test_empty__length
  @bus.empty
  assert_equal(0, @bus.count_passengers)
end




end
