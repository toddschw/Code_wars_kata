def closest_sum(ints, num)
  sums = []
  triplets =[]
  ints.combination(3).map do |arr|
    sums << arr.reduce(:+)
    triplets << arr
  end

  p zipped = sums.zip(triplets)

  p zipped.class

  p answer = zipped.map { |x| [(x[0]-num).abs,x[1]] }.sort_by { |x| x[0]}.first[1].reduce(:+)
end

__END__

Closest Sum 6 kyu

Given an array (ints) of n integers, find three integers in arr such that the sum is closest to a given number (num), target.

Return the sum of the three integers. You may assume that each input would have exactly one solution.

Example:

closest_sum([-1, 2, 1, -4], 1) # 2 (-1 + 2 + 1 = 2)
Note: your solution should not modify the input array.