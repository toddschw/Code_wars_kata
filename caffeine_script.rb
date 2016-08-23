# Code Wars Kata, 7 kyu

def caffeineBuzz(n)
  if (n % 3 == 0 and n % 4 == 0)
    drink = "Coffee"
  elsif n % 3 == 0
    drink = "Java"
  else
    drink = "mocha_missing!"
  end

  if (drink == "Coffee" or drink == "Java") and n.even?
    drink = drink + "Script"
  end

  drink
end

puts caffeineBuzz(1)   #=> "mocha_missing!"
puts caffeineBuzz(3)   #=> "Java"
puts caffeineBuzz(6)   #=> "JavaScript"
puts caffeineBuzz(12)  #=> "CoffeeScript"