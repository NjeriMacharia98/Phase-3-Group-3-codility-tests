def solution(a)
    max_multiple_of_4 = nil
  
    a.each do |num|
      if num % 4 == 0 && (max_multiple_of_4.nil? || num > max_multiple_of_4)
        max_multiple_of_4 = num
      end
    end
  
    max_multiple_of_4
  end

array = [-6, -91, 1011, -100, 84, -22, 0, 1, 473]
puts solution(array)  # Output: 84
