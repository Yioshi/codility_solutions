require_relative './solution'

INPUT_OUTPUT_MAPPINGS = {
  [2, 2, 8, 8, 9] => 9,
  [2, 8, 2, 8, 6, 6, 5] => 5,
  [8, 6, 8, 4, 6, 4, 7, 2, 2] => 7,
  [0] => 0,
  [100_000] => 100_000,
  [1, 2, 1] => 2,
  [1, 1, 1, 1, 5] => 5,
  [1, 1, 5, 1, 1] => 5,
  [1, 1, 1,] => 1,
  [1, 1, 1, 1, 1] => 1
}

INPUT_OUTPUT_MAPPINGS.each do |input, expectation|
  if solution(input) == expectation
    puts '.'
  else
    puts "This should have given #{expectation}"
  end
end
