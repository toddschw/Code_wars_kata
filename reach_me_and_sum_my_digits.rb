def sumDig_nthTerm(initval, patternl, nthterm)
  terms_array = []
  terms_array[0] = initval
  size_of_pattern = patternl.size

  (nthterm -1).times do |i|
    proper_index = i % size_of_pattern
    terms_array[(terms_array.size)] = terms_array.last + patternl[proper_index]
  end

  sumDigits(terms_array.last)
end


def sumDigits(number)
  number_as_string = number.to_s
  num_digits = number_as_string.size

  sum = 0
  num_digits.times do |n|
    sum += number_as_string[n].to_i
  end
 sum
end


p sumDig_nthTerm(10, [2, 1, 3], 6)
p sumDig_nthTerm(10, [2, 1, 3], 15)
p sumDig_nthTerm(10, [2, 1, 3], 50)
p sumDig_nthTerm(10, [2, 1, 3], 78)
p sumDig_nthTerm(10, [2, 1, 3], 157)

__END__

sumDig_nthTerm(10, [2, 1, 3], 6) -----> 10 # because the sixth term is 19 sum of Dig = 1 + 9 = 10. The sequence up to the sixth-Term is: 10, 12, 13, 16, 18, 19

sumDig_nthTerm(10, [1, 2, 3], 15) ----> 10 # 37 is the 15-th term, and 3 + 7 = 10
