#### Normalize an integer
# Given an integer, return the integer represented as a string with commas in
# the correct positions.

def normalize(int)
  return unless int.class == Integer
  puts '\'' + int.to_s + '\''
  return '\'' + int.to_s + '\''
end

normalize(42)