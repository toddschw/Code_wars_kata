def comp(array1, array2)
  # check to make sure both arrays are sized equally
  return false if array1.eql? nil
  return false if array2.eql? nil

  # check to make sure both arrays are sized equally
  return false unless array1.size == array2.size

  array1 = array1.sort
  array2 = array2.sort

  truth_array = []
  array1.map.with_index do |number, index|
    truth_array << (number * number == array2[index])
  end

  truth_array.all? { |value| value }
end



a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

p comp(a, b)