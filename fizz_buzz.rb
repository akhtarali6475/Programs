class FizzBuzz
  def self.fizz_buzz(number)
    if (number % 3 == 0) && (number % 5 == 0)
      "FizzBuzz"
    elsif (number % 3 == 0)
      "Fizz"
    elsif (number % 5 == 0)
      "Buzz"
    else
      number
    end
  end

  def self.optimized_fizz_buzz(number)
    (1..number).each do |i|
      str = ""
      str += "Fizz" if (i % 3 == 0)
      str += "Buzz" if (i % 5 == 0)
      str = i if str.empty?
      puts str
    end
  end
end
