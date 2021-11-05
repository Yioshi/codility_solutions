require_relative './solution'

INPUT_OUTPUT_MAPPINGS = {
  [4, 1, 3, 2] => 1,
  [1, 3, 2, 4] => 1,
  [1, 7, 6, 4, 5, 3, 2] => 1,
  [8, 1, 7, 2, 6, 3, 5, 4] => 1,
  [3, 1, 2] => 1,
  [4, 1, 3] => 0,
  [4, 3, 2] => 0,
  [5, 1, 3, 2] => 0,
  [9, 1, 8, 2, 6, 3, 5, 4] => 0,
  [1, 3] => 0,
  [2, 3, 4, 5] => 0
}

INPUT_OUTPUT_MAPPINGS.each do |input, expectation|
  if solution(input) == expectation
    puts '.'
  else
    puts "This should have given #{expectation}"
  end
end
