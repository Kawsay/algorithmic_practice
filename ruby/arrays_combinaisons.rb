#### Array Combinations
#  Write a method combinations which takes two arrays of strings and returns an
#  array with all of the combinations of the items in them, listing the first items first.


def combinations(arr1, arr2)
  mixed_arr = []
  arr1.each do |elem|
    for n in (0..arr2.length - 1)
      mixed_arr << "#{elem}#{arr2[n]}"
    end
  end
  print mixed_arr
end

arr1 = %w[aaa bbb zzz eee]
arr2 = %w[111 222 333 444]
combinations(arr1, arr2)