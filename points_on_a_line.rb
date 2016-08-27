def on_line(points)
  return true if points.size == 2

  points = points.uniq

  #horizontal line check
  x_cords = []
  points.each do |point|
    x_cords << point[0]
  end
  return true if x_cords.max == x_cords.min

  # this equation must be satisfied for all points
  # y = mx + b

  #rename points
  x1, y1 = points[0][0], points[0][1]
  x2, y2 = points[1][0], points[1][1]
  x3, y3 = points[2][0], points[2][1]

  # determine m (slope) points 1,2
  m = ((y2 - y1).to_f / (x2 - x1).to_f)

  # determine b (y-intercept) from point 1
  # b = y - mx
  b = y1 - (m * x1)

  # this equation must be satisfied for all points
  # y.to_f == ( (m * x) + b )

  truth_array = []

  points.each_with_index do |point, index|
    truth_array << true if index == 0
    truth_array << true if index == 1
    truth_array << false unless points[index][1] == (m * (points[index][0]) + b).round(2)
  end

  truth_array.all? { |element| element }
end

p on_line([[1,2], [7, 4], [22, 9]])
p on_line([[7,4], [1, 2], [22, 9]])
p on_line([[1, 2], [1, 4], [1, 7]])



__END__

Given some points (cartesian coordinates), return true if all of them lie on a line.

on_line([[1,2], [7, 4], [22, 9]])    => returns true
on_line([[1,2], [-3, -14], [22, 9]]) => returns false