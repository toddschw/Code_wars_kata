def to_number_array(string_array)
  string_array.map do |value|
    if value.index(".")
      value.to_f
    else
      value.to_i
    end
  end
end

def to_number_array2(string_array)
  string_array.map(&:to_f)
end

p to_number_array2(["1", "2", "3"])

__END__

7 kyu
Convert an array of strings to array of numbers

Oh no!

Some really funny web dev gave you an array of numbers from his API response as an array of strings!

You need to cast the whole array to the correct type.

Create the function

Ruby: toNumberArray(array)
that takes as a parameter an array of numbers represented as strings and outputs an array of numbers.

ie:["1", "2", "3"] to [1, 2, 3]

Note that you can receive floats as well.
