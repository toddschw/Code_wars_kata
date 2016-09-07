require 'prime'

def count_specMult(n,maxVal)
    first_n_primes = Prime.take n
    p first_n_primes
    prod_of_primes = first_n_primes.reduce(:*)
    (maxVal / prod_of_primes).floor
end

p count_specMult(3, 1000)

__END__

Special Multiples Kata
6 kyu

Description:

Some numbers have the property to be divisible by 2 and 3. Other smaller subset of numbers have the property to be divisible by 2, 3 and 5. Another subset with less abundant numbers may be divisible by 2, 3, 5 and 7. These numbers have something in common: their prime factors are contiguous primes.

Create a function count_specMult() that finds the amount of numbers that have the first n primes as factors below a given value, maxVal

Let's see some cases:

count_specMult(3, 200) -------> 6

/// the first 3 primes are 2, 3 and 5

and the found numbers below 200 are 30 < 60 < 90 < 120 < 150 < 180 < 200 (6 numbers)
Happy coding!!