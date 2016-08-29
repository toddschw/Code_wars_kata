VOWELS = ["a","e","i","o","u"]

def getCount(inputStr)
  inputStr.chars.select { | char | VOWELS.include? char }.size
end

puts getCount("abracadabra")
puts getCount g("a".."z").to_a.join

__END__

7 kyu
Vowel Count

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.