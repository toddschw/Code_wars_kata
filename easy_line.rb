def easyline(n)
    final_row = draw_pascal_triangle(n).last
    final_row.map { |x| x*x }.reduce(:+)
end

def draw_pascal_triangle(n)
  answer = []
  1.upto(n) do |i|
    answer << [1] if i == 1

    next_row = [1]
    answer.last.each_cons(2) do |pair|
      next_block = pair[0] + pair[1]
      next_row << next_block
    end

    next_row << 1
    answer << next_row
  end
  answer
end

__END__

Easy line
7 kyu

In the drawing below we have a part of the Pascal's triangle, lines are numbered from zero (top).

We want to calculate the sum of the squares of the binomial coefficients on a given line with a function called easyline (or easyLine or easy-line).

Can you write a program which calculate easyline(n) where n is the line number?

The function will take n (with: n>= 0) as parameter and will return the sum of the squares of the binomial coefficients on line n.

Examples:

easyline(0) => 1
easyline(1) => 2
easyline(4) => 70
easyline(50) => 100891344545564193334812497256