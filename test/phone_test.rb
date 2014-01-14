require "test_helper"

class PhoneTest < Minitest::Test
  def test_number
    assert_match /\A\d{3}-\d{3}-\d{4}\Z/, Fictional::Phone.number
    refute_equal Fictional::Phone.number, Fictional::Phone.number
  end
  
  def test_build_number
    assert phone1 = Fictional::Phone.build
    assert phone1.number
    assert phone1.number == phone1.number
  
    assert phone2 = Fictional::Phone.build
    
    assert phone1.number != phone2.number
  end
end