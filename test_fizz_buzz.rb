require 'test/unit'
require_relative 'fizz_buzz'

class TestFizzBuzz < Test::Unit::TestCase

  def test_fizz
    assert_equal("Fizz", FizzBuzz.fizz_buzz(3))
    assert_equal("Fizz", FizzBuzz.fizz_buzz(6))
  end

  def test_buzz
    assert_equal("Buzz", FizzBuzz.fizz_buzz(5))
    assert_equal("Buzz", FizzBuzz.fizz_buzz(10))
  end

  def test_fizz_buzz
    assert_equal("FizzBuzz", FizzBuzz.fizz_buzz(15))
    assert_equal("FizzBuzz", FizzBuzz.fizz_buzz(30))
  end

  def test_number
    assert_equal(2, FizzBuzz.fizz_buzz(2))
    assert_equal(4, FizzBuzz.fizz_buzz(4))
  end
end
