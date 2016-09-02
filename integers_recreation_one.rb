def list_squared(m, n)
    result_array = []
    if m == 1
      result_array.push [1,1]
      m += 1
    end
    m.upto(n) do |i|
      sum = sum_divisors(get_divisors(i))
      is_sum_a_square?(sum)
      result_array.push([i,sum]) if is_sum_a_square?(sum)
    end
  result_array
end

def get_divisors(m)
  divisors = []
  1.upto(m) do |i|
    divisors.push(i*i) if (m % i == 0)
  end
  divisors
end

def sum_divisors(arr)
  arr.reduce(:+)
end

def is_sum_a_square?(n)
  Math.sqrt(n) % 1 == 0 ? true : false
end


p list_squared(1, 250)