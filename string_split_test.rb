require 'minitest/autorun'
require 'minitest/pride'


def first_name(name)
  input = []
  if name == ""
    return ""
  elsif name[/ *\z/].size == nil
    return name
  else
    input = name.split
    d = input.first input.size - 1
    d.join(" ")
  end
end

def last_name(name)
  input = []
  if name == ""
    return ""
  elsif name[/ *\z/].size == nil
    return ""
  else
    input = name.split
    input.last
  end
end

class StringSplitChallenge < MiniTest::Test
  def test_first_name
    assert_equal "Russell", first_name("Russell Osborne")
  end

  def test_last_name
    assert_equal "Osborne", last_name("Russell Osborne")
  end

  def test_one_word_name
    assert_equal "deadmou5", first_name("deadmou5")
    assert_equal "", last_name("deadmou5")
  end

  def test_three_word_name
    assert_equal "John Quincy", first_name("John Quincy Adams")
    assert_equal "Adams", last_name("John Quincy Adams")
  end

  def test_no_word_name
    assert_equal "", first_name("")
    assert_equal "", last_name("")
  end
end
