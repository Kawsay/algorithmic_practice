#### Check for the 10
# Write a method/function that takes an array of numbers and returns a boolean
# based on if any number in the array, added up to its index, equals 10.

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def check_the_10(arr)
  arr.each_with_index do |index, int|
    puts index + int == 10 ? "true for #{int}" : 'false'
    index + int == 10 ? true : false
  end
end

check_the_10(arr)