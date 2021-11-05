# EXPLANATION
# ----> array_example [7, 2, 8, 3, 5] <---- #
# The array needs to rotate (to the right) twice (K=2)
# The size of the array is 5 (5 slots in the array)
# OPERATION FOR CYCLIC ROTATION:
# At each poition we do the equation of: Position of the array (0) + K (Number of times it needs to move to the right as always) % 5 which is the size of the array
# 0(position)+2(K)%5 = 2(new position)
# 1(position)+2(K)%5 = 3(new position)
# 2(position)+2(K)%5 = 4(new position)
# 3(position)+2(K)%5 = 0(new position)
# So the formula is (i+K)%SIZE of the array (called 'The Pacman Formula')

def solution(list, rotation_times)
    unless list.empty?
# Create a new Array with the same length of the given array
new_array = Array.new(list.length)
  # For the index in the first position to the length of the Array - 1
  list.each_with_index do |number, i|
    # Operation for the cyclic roation = the array
    new_array[( i + rotation_times ) % list.size] = list[i]
  end
    new_array
  end
end
