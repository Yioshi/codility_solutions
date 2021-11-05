# EXPLANATION
# The numbers in the given sequence should have increased numbers starting with 1
# And not be missing any number
def solution(sequence)
sorted_sequence = sequence.sort
comparison_sequence = Array(1..(sequence.size))
numbers_sequenced = []
sorted_sequence.each.with_index do |comparison, i|
  if comparison == comparison_sequence[i]
    numbers_sequenced << comparison
  end
end
  if numbers_sequenced == sorted_sequence
    return 1
  else
    return 0
  end
end
