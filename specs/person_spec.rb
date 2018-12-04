require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")


class TestPerson < MiniTest::Test

def setup
  @person = Person.new("Cassia", 24)

end


end
