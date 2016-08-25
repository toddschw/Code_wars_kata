# Code Wars Kata - russian postal code checker, 7 kyu

def zipvalidate(postcode)
  # only 6 digits allowed
  return false unless postcode.length == 6

  # no empty string allowed
  return false if postcode == ""

  # first digit can't be 0,5,7,8,9
  first_digit = postcode[0].to_i
  forbidden = [0,5,7,8,9]
  return false if forbidden.include? first_digit

  # no white spaces, letters, symbols
  postcode.chars.all? do |char|
    if char == "0"
      true
    else
      char = char.to_i
      return true unless char == 0
    end
  end
end

