def is_narcissistic(n)
  n = n.to_s
  size = n.length
  n.chars.map { |x| (x.to_i)**size }.reduce(:+) == n.to_i
end


p is_narcissistic(153)

__END__

Narcissistic Numbers 7 kyu

A Narcissistic Number is a number of length n in which the sum of its digits to the power of n is equal to the original number. If this seems confusing, refer to the example below.

Ex: 153, where n = 3 (number of digits in 153)
13 + 53 + 33 = 153

Write a method is_narcissistic(i) which returns whether or not i is a Narcissistic Number.