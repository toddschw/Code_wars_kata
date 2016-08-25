# Formatting Decimal Places Kata, 7 kyu

def two_decimal_places(number)
  number.to_s.slice(0..number.to_s.index('.')+2).to_f
end

p two_decimal_places(-14.32866352443534)