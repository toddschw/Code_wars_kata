def truncate_string(str,n)
  return str if n >= str.length
  n <= 3 ? ind = n : ind = n-3
  str.chars[0,ind].join.insert(-1, "...")
end

__END

Truncate a string
7 kyu

Truncate a string (first argument) if it is longer than the given maximum string length (second argument). Return the truncated string with a ... ending.

Note that inserting the three dots to the end will add to the string length.

However, if the given maximum string length num is less than or equal to 3, then the addition of the three dots does not add to the string length in determining the truncated string.


