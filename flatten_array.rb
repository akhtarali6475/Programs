def flatten_array(array, result = [])
  array.each do |element|
    if element.is_a?(Array)
      flatten_array(element, result)
    else
      result << element
    end
  end
  result
end

# Example usage
nested_array = [1, [2, [3, 4], 5], 6]
puts flatten_array(nested_array).inspect
