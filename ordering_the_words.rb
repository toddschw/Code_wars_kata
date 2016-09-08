def order_word(s)
  return "Invalid String!" if (s.equal? nil) || s.empty?
  s.each_char.sort.join
end

__END__

Ordering the words
7 kyu 

Description:

Given a string, you need to write a method that order every letter in this string in ascending order.

Also, you should validate that the given string is not empty or null. If so, the method should return:

"Invalid String!"
Examples

order_word("hello world") => " dehllloorw"
order_word("bobby") => "bbboy"
order_word("") => "Invalid String!"
Notes

• the given string can be lowercase and uppercase.
• the string could include spaces or other special characters like '# ! or ,'
Good luck! Hope you enjoy it