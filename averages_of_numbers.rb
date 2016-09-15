def averages(arr)
  arr.nil? ? [] : arr.each_cons(2).map  { |v1,v2| (v1.to_f + v2)/2 }
end

p averages([1, 3, 5, 1, -10])