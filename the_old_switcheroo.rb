# Code Wars Kata - The old switcheroo, 7 kyu

def vowel_2_index(string)
  phrase = string.chars.map.with_index(1) do |char,i|
    ["a","e","i","o","u","A","E","I","O","U"].include?(char) ? i : char
  end
  phrase.join
end

