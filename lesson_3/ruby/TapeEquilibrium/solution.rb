def solution(tape)
# Create variable representing the addition of the left part of the array
sum_left = tape[0]
# Create a variable representing the summation of the right part of the array(sum_right)
# By addind all the elements of the array and subtracting the first number(sum_left)
sum_right = tape.reduce(:+) - sum_left
# Create a new array to store the difference between the additions of each side every time the position moves
# The first position is stored directly in it
difference = [sum_right - sum_left, ]
# We iterate between the second position in the given array and the last position
tape[1..tape.length - 1].each do |num|
  # Each time we add the number in this position to the left side
  sum_left += num
  # And subtract the same number from the right side
  sum_right -= num
  # Then create a container for the difference between both and make it absolute (.abs)
  absolute_num = (sum_left - sum_right).abs
  # Push this absolute_num number into the array we created above
  difference.push(absolute_num)
  end
  # Now every difference is stored in the container 'difference'
  # And we extract the minimum number in this array to find the
  minimum_difference = difference.min
end
