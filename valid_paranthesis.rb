def valid_paranthesis(s)
  stack = []
  brackets = { "(" => ")", "[" => "]", "{" => "}" }

  s.each_char do |char|
    if brackets[char]
      stack.push(char)
    else
      return false if brackets[stack.pop] != char
    end
  end
  stack.empty?
end

puts valid_paranthesis("()") # true
puts valid_paranthesis("()[]{}") # true
puts valid_paranthesis("(]") # false
puts valid_paranthesis("([)]") # false
puts valid_paranthesis("{[]}") # true