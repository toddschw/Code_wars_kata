# Code Wars Kata - Area of a Circle, 7 kyu

def circle_area r
  return false unless (r.is_a? Numeric and r.positive?)
  (Math::PI * r * r).round(2)
end