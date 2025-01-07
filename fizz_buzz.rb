class FizzBuzz
  def self.fizz_buzz(number)
    (1..number).each do |i|
      result = if (i % 3 == 0) && (i % 5 == 0)
                  "FizzBuzz"
                elsif (i % 3 == 0)
                  "Fizz"
                elsif (i % 5 == 0)
                  "Buzz"
                else
                  i
                end

      puts result
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

FizzBuzz.optimized_fizz_buzz(100)
