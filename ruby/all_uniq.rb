#### All Unique
# Write a function/method that takes a string and returns a boolean based on
# whether all characters in the string are unique. If given am array, return
# a boolean based on whether all items in the array are unique. If given
# key/value pairs (Ruby's Hash, JavaScript's Object, Python's Dictionary),
# returns a boolean based on whether all key/value pairs are unique. 
# Don't rely on built-in methods that search for uniques.


# TODO


def define_class(input)
  return input if input.class != (String || Array || Hash)
  case input.class
  when String then uniq_string(input)
  when Array then uniq_array(input)
  when Hash then uniq_hash(input)
  end
end

def uniq_string(str)
  hash = str_each_char(str)
  # for n in (0...hash.length)
    # puts hash[:str[n]]
    # puts n 
  # end
  hash.each_value do |v|
    puts v > 1 ? 'yes' : ' no'
  end
end

def str_each_char(str)
  characters = {}
  for n in (0...str.length)
    if characters.has_key?(str[n].capitalize)
      characters[str[n].capitalize] += 1
    else
      characters[str[n].capitalize] = 1
    end
  end
  puts characters
  characters
end

uniq_string('aze aze aze l')