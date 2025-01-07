require 'test/unit'

require_relative 'factorial'

class TestFactorila < Test::Unit::TestCase

  def test_factorial
    assert_equal(1, factorial(0))
    assert_equal(1, factorial(1))
    assert_equal(2, factorial(2))
    assert_equal(6, factorial(3))
  end
end
