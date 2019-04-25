#### Palindrome Two

# Have the function PalindromeTwo(str) take the str parameter being passed and
# return the string true if the parameter is a palindrome, (the string is
# the same forward as it is backward) otherwise return the string false.
 
# The parameter entered may have punctuation and symbols but they should not
# affect whether the string is in fact a palindrome. 
# For example: "Anne, I vote more cars race Rome-to-Vienna" should return true.

str = 'azekawasdfsdfkeza'

def palindrome_two(str)
  for n in (0..str.length)
    break if str.length == 1
    str[0] == str[-1] ? true : false
    str[0] = ''
    str[-1] = ''
  end
  puts 'true'
end

palindrome_two(str)