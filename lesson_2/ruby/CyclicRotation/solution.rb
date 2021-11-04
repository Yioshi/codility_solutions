def solution(a, k)
    unless a.empty?
# Create a new Array with the same length of the given array
new_array = Array.new(a.length)
  # For the index in the first position to the length of the Array - 1
  a.each_with_index do |number, i|
    # Operation for the cyclic roation = the array
    new_array[(i+k)%a.size] = a[i]
  end
    new_array
  end
end
