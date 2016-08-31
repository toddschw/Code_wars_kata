def duplicate_encode(word)
  hash = Hash.new
  word.downcase.chars.each do |l|
    if hash[l].nil?
      hash[l] = 0
    end
    hash[l] = hash[l] + 1
  end
  encoded = word.downcase.chars.map do |letter|
    if hash[letter] == 1
      "("
    else
      ")"
    end
  end
  encoded.join
end

__END__

Duplicate Encoder
6 kyu

Description:

The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

Examples:

"din" => "((("

"recede" => "()()()"

"Success" => ")())())"

"(( @" => "))(("