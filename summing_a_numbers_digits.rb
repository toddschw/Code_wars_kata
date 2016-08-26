# Summing a number's digits Kata, 7 kyu

# Write a function named sumDigits which takes a number
# as input and returns the sum of the absolute value of
# each of the number's decimal digits.

def sumDigits(number)
  number.to_s.chars.reduce(0) { |sum, digit| sum + digit.to_i.abs }
end

