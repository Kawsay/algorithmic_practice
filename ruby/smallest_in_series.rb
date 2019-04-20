require 'pry'

#### Smallest in series
# Given a string representing a sentence, split the sentence and return shortest
# string without using built-in methods/functions.
# Given an array, return the smallest string.

arr = %w[The twelves quick foxes jumped over the ten lazy dogs]

def split_words(input)
  input.class == String ? split_words_str(input) : split_words_arr(input)
end

def split_words_arr(arr)
  words = []
  arr.each do |elem|
    words << elem
  end
  words
end

def split_words_str(str)
  words = []
  for n in (0..str.length) do
    n = str =~ /[,;:! ?.]/
    words << str[0..n - 1] unless n.nil?
    str = str[n + 1..-1] unless n.nil?
  end
  words << str
  words
end

# def split_words_str(str)
#   words = []
#   str.each do
#     n = str =~ /[,;:! ?.]/
#     words << s[0..n - 1] unless n.nil?
#     str = str[n + 1..-1] unless n.nil?
#   end
#   words << str
#   words
# end

def find_shortest_word(arr)
  shortest_words = []
  arr.each do |elem|
    shortest_words << elem if elem.length == arr.min.length
  end
  puts shortest_words
end

find_shortest_word(split_words('The twelves quick foxes'))
find_shortest_word(split_words(arr))
