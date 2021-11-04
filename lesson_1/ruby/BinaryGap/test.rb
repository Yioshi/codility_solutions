require './lessons/lesson_1/task_1/ruby/solution.rb'

test_cases = {
  '1041' => 5,
  '15' => 0,
  '32' => 0,
  '20' => 1
}


test_cases.each do |key, val|
  if solution(key.to_i) == val
    puts "."
  else
    puts "Test failed because output was expected to be #{val}"
  end
end
