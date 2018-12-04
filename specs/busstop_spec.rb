require("minitest/autorun")
require("minitest/rg")
require_relative("../busstop.rb")

class TestBusStop < MiniTest::Test

def setup
@bus_stop = BusStop.new("Edinburgh", ["Jack"])
end

def test_add_person
  assert_equal(["Jack", "James"], @bus_stop.add_person("James"))
end

def test_pick_up_from_stop
  assert_equal()
  assert_equal(0, )
end

end
