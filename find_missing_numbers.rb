def find_missing_numbers(arr)
  return [] if arr.empty? || arr.size == 1
  (arr[0]..arr[-1]).to_a - arr
end

p find_missing_numbers [-3,-2,1,4]


__END__

Find missing numbers, 7 kyu

You will get an array of numbers.

Every preceding number is smaller than the one following it.

Some numbers will be missing, for instance:

[-3,-2,1,5] //missing numbers are: -1,0,2,3,4
Your task is to return an array of those missing numbers:

[-1,0,2,3,4]