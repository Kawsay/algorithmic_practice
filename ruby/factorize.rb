#### Factorize
# Write a method/function that takes an integer and returns an array of integers
# representing the original integers factors.
# E.g., given 10, return [1, 2, 5, 10].

def factorize(int)
  factors = []
  for n in (1..int)
    factors << n if int % n == 0
  end
  puts factors
end

factorize(10)