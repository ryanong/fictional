require "test_helper"

class PersonTest < Minitest::Test

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

  def test_build
    assert person1 = Fictional::Person.build
    assert person2 = Fictional::Person.build
    refute_equal person1.first_name, person2.first_name
    refute_equal person1.last_name, person2.last_name
  end
  
  def test_built_email
    assert person1 = Fictional::Person.build
    assert person1.email
    assert_equal person1.email, person1.email
  end

  def test_built_phone_number
    assert person1 = Fictional::Person.build
    assert person1.phone
    assert_match /\A\d{3}-\d{3}-\d{4}\Z/, person1.phone.number
    assert_equal person1.phone.number, person1.phone.number
  end
end
