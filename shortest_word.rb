def find_short(s)
    s.split.reduce { |acc, item| acc.length < item.length ? acc : item }.length
end

__END__


7 kyu,
Shortest Word

Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.