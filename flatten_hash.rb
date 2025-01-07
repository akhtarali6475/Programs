def flatten_hash(hash, parent_key = nil, separator = '.', result = {})
  hash.each do |key, value|
    new_key = [parent_key, key].compact.join(separator)
    if value.is_a?(Hash)
      flatten_hash(value, new_key, separator, result)
    else
      result[new_key] = value
    end
  end
  result
end

# Example usage
nested_hash = { a: { b: { c: 1 } }, d: 2 }x
puts flatten_hash(nested_hash)
