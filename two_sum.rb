def two_sum(nums, target)
  target_hash = {}
   nums.each_with_index do |num, index|
       remaining = target - num
       if target_hash.key?(remaining)
           return [remaining, num]
       end
       target_hash[num] = index
   end
end

nums = [2,7,11,15]
target = 9

puts two_sum(nums, target) # [2,7]
