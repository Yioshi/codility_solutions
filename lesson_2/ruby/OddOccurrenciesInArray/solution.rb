#EXPLANATION
#Each element of the given Array has a pair except one
#we need to find a way to count the one that doesn't repeat
#so we put all the elements unrepeated into a separate array
#and count each one of them on the original given array(a)

def solution(list)
# Discards te repeated elements of the array and puts them into a new variable
unique_numbers = list.uniq
# The variable is checked on each of the array elements
unique_numbers.each do |element|
  # If a count of the element in the array is an odd number (in this case the odd number should be 1)
  if list.count(element).odd?
    return element
    end
  end
end
