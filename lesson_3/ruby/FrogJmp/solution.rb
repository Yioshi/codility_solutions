# EXPLANATION
# The distance to travel must be larger than the initial position
# The equation we use to calculate the amount of jumps the frog must make to reach y from x is:
# (y-x)/d -> (finish_line - starting_position) / distance_jumped
# The trick in this one is to convert everything into a Float number before doing the calculation
# In case the division doesn't give out an Integer because Ruby would convert it to one
# This way, it can be rounded up with .ceil() afterwards
# For a graphic description checkout: https://www.youtube.com/watch?v=hUZaWUUgKEw


def solution(starting_position, finish_line, distance_jumped)
  # The starting_position could be equal to the finish_line, so we cover this case below
  if starting_position == finish_line
    0
  else
    (Float(finish_line - starting_position) / distance_jumped).ceil
  end
end
