
def solution_2(list, rotation_times)
# The unless construct inverts the if condition
# The .empty? stablishes if the value exists or its nil
unless list.empty?
  # For the amount of times it asks us to rotate
  rotation_times.times do |pop_and_insert|
  # Take the last element from the array, storing it in a container
  # Using the .pop Method given by Ruby
    last = list.pop
  # And insert it in the first place of the same array
  # Using the .insert operator, remember to indicate the poistion to insert first and what to insert
    list.insert(0, last)
end
  # And return the modified array
  list
  end
end
