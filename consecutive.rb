def consecutive_num(nums)
    num_hash = Hash.new(false)
    max_sequence_length = 0
  
    nums.each { |num| num_hash[num] = true }
  
    nums.each do |num|
      if !num_hash[num - 1]
        current_num = num
        current_sequence_length = 1
  
        while num_hash[current_num + 1]
          current_num += 1
          current_sequence_length += 1
        end
  
        max_sequence_length = [max_sequence_length, current_sequence_length].max
      end
    end
  
    max_sequence_length
  end
  
  nums1 = [100, 4, 200, 1, 3, 2]
  result = consecutive_num(nums1)
  puts result
  