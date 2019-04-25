#### Sum triangle numbers
# Given a number n, sum up all the right-most numbers from the triangle.

# Example: n = 4

# ```
# 1
# 2 3
# 4 5 6
# 7 8 9 10

# => 1 + 3 + 6 + 10 = 20


def triangle_sum(n)
  stage = 0
  brick = 1
  printed_int = 1
  sum = []
  puts "`````"
  loop do
    brick.times do 
      print "#{printed_int} "
      printed_int += 1
    end
    sum << printed_int - 1
    puts " "
    brick += 1
    stage += 1
    break if stage == n
  end
  puts "=> #{sum.join(' + ')} = #{sum.sum}"
  puts "`````"
end

triangle_sum(4)
