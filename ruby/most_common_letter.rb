#### Most common letter
# Given a string, return the character that is most common,
# including the number of times it occurs.

str = "azz azeaze qsdqsd "

def count_letters(str)
  letter = {}
  for n in (0...str.length)
    if letter.has_key?(str[n].capitalize)
      letter[str[n].capitalize] += 1
    else
      letter[str[n].capitalize] = 1
    end
  end
  puts letter
end

count_letters(str)