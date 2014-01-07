require "test_helper"

class PersonTest < Minitest::Test
  def setup
    @data = {
      :first_name => "ryan",
      last_name: "ong"
    }
  	@person = Fictional::Person.new(@data)
    
    @data2 = {
      first_name: "sam",
      last_name: "asshole"
    }
    @person2 = Fictional::Person.new(@data2)
  end

  def test_first_name
    assert name1 = Fictional::Person.first_name
    assert name2 = Fictional::Person.first_name
    refute_equal name1, name2
  end
  def test_last_name
    assert name1 = Fictional::Person.last_name
    assert name2 = Fictional::Person.last_name
    refute_equal name1, name2
  end
end
