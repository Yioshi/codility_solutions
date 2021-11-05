# EXPLANATION
# The given Array start at 1 and its has a missing element
# In order to find out the single missing element
# We can use the summatory of the numbers(actual sum) in the given Array
# And the summatory of the size of the iven Array + 1 (max_number)
# And subtract the max_number with the actual_sum to find which number is missing

def solution(elements)
# Create container to imput the sum of the array inside
# And add the numbers inside the existing array
actual_sum = elements.sum

# Alternatively, if you don't use the .sum function, a loop could be used to get the actual_sum
# arr.each do |number|
#     actual_sum += number
# end

# Create a container for the size of the current array + 1 so we know it's the max number
max_number = elements.size + 1 #could also use .length

# Finally, we use the max_number to find out the size of what the sum of the complete Array should be
final_sum = (1..max_number).sum

# TO PLEASE YOUR INTERVIEWER:
# ^ This could also be found using the "Add to X" Equation to find the final_sum
# Equation: (x * (x + 1) / 2)
# So: final_sum = (max_number * (max_number + 1) / 2)

# Finally, we subtract the final_sum and the actual_sum
final_sum - actual_sum
end
