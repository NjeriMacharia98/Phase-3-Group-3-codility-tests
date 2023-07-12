def two_sum(nums, target)
  num_map = {}
  
  nums.each_with_index do |num, index|
    complement = target - num
    
    if num_map.key?(complement)
      return [num_map[complement], index]
    end
    
    num_map[num] = index
  end
  
  return nil  # No solution found, return nil or an empty array
end

nums = [2, 7, 11, 15]
target = 9
result = two_sum(nums, target)
puts result.inspect
